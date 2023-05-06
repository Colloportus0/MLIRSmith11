module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 2 , 1 , 1 , 2] , \22name\22 : \22v1_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 2 , 1 , 1] , \22name\22 : \22v3_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i32\22 , \22dims\22 : [4] , \22name\22 : \22v4_0\22 }\0A ,    { \22type\22 : \22i1\22 , \22dims\22 : [1 , 2 , 1 , 2] , \22name\22 : \22v0_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.func @omTensorListGetSize(!llvm.ptr<i8>) -> i64
  llvm.func @omTensorPrint(!llvm.ptr<i8>, !llvm.ptr<i8>)
  llvm.func @omTensorListGetOmtArray(!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
  llvm.func @omTensorSetDataType(!llvm.ptr<i8>, i64)
  llvm.func @omTensorGetDataType(!llvm.ptr<i8>) -> i64
  llvm.func @omTensorGetStrides(!llvm.ptr<i8>) -> !llvm.ptr<i64>
  llvm.func @omTensorGetShape(!llvm.ptr<i8>) -> !llvm.ptr<i64>
  llvm.func @omTensorGetRank(!llvm.ptr<i8>) -> i64
  llvm.func @omTensorSetDataPtr(!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>)
  llvm.func @omTensorGetDataPtr(!llvm.ptr<i8>) -> !llvm.ptr<i8>
  llvm.func @omTensorCreateUntyped(i64) -> !llvm.ptr<i8>
  llvm.func @omTensorListCreate(!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
  llvm.func @malloc(i64) -> !llvm.ptr<i8>
  llvm.mlir.global internal constant @constant_2(dense<1> : tensor<i32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i32>
  llvm.mlir.global internal constant @constant_1(dense<-1> : tensor<i32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i32>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64, %arg11: i64, %arg12: i64, %arg13: !llvm.ptr<i32>, %arg14: !llvm.ptr<i32>, %arg15: i64, %arg16: i64, %arg17: i64, %arg18: i64, %arg19: i64, %arg20: i64, %arg21: i64, %arg22: i64, %arg23: i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> attributes {input_names = ["v1_0", "v3_0"], llvm.emit_c_interface, output_names = ["v4_0", "v0_0"]} {
    %0 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>
    %1 = llvm.insertvalue %arg0, %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %2 = llvm.insertvalue %arg1, %1[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %3 = llvm.insertvalue %arg2, %2[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %4 = llvm.insertvalue %arg3, %3[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %5 = llvm.insertvalue %arg8, %4[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %6 = llvm.insertvalue %arg4, %5[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %7 = llvm.insertvalue %arg9, %6[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %8 = llvm.insertvalue %arg5, %7[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %9 = llvm.insertvalue %arg10, %8[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %10 = llvm.insertvalue %arg6, %9[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %11 = llvm.insertvalue %arg11, %10[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %12 = llvm.insertvalue %arg7, %11[3, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %13 = llvm.insertvalue %arg12, %12[4, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %14 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %15 = llvm.insertvalue %arg13, %14[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %16 = llvm.insertvalue %arg14, %15[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %17 = llvm.insertvalue %arg15, %16[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %18 = llvm.insertvalue %arg16, %17[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %19 = llvm.insertvalue %arg20, %18[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %20 = llvm.insertvalue %arg17, %19[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %21 = llvm.insertvalue %arg21, %20[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %22 = llvm.insertvalue %arg18, %21[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %23 = llvm.insertvalue %arg22, %22[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %24 = llvm.insertvalue %arg19, %23[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %25 = llvm.insertvalue %arg23, %24[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %26 = llvm.mlir.constant(0 : index) : i64
    %27 = llvm.mlir.constant(2147483647 : i32) : i32
    %28 = llvm.mlir.addressof @constant_1 : !llvm.ptr<array<1 x i32>>
    %29 = llvm.bitcast %28 : !llvm.ptr<array<1 x i32>> to !llvm.ptr<i32>
    %30 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64)>
    %31 = llvm.insertvalue %29, %30[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %32 = llvm.insertvalue %29, %31[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %33 = llvm.mlir.constant(0 : index) : i64
    %34 = llvm.insertvalue %33, %32[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %35 = llvm.mlir.addressof @constant_2 : !llvm.ptr<array<1 x i32>>
    %36 = llvm.bitcast %35 : !llvm.ptr<array<1 x i32>> to !llvm.ptr<i32>
    %37 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64)>
    %38 = llvm.insertvalue %36, %37[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %39 = llvm.insertvalue %36, %38[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %40 = llvm.mlir.constant(0 : index) : i64
    %41 = llvm.insertvalue %40, %39[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %42 = llvm.mlir.constant(1 : index) : i64
    %43 = llvm.mlir.constant(2 : index) : i64
    %44 = llvm.mlir.constant(1 : index) : i64
    %45 = llvm.mlir.constant(2 : index) : i64
    %46 = llvm.mlir.constant(1 : index) : i64
    %47 = llvm.mlir.constant(2 : index) : i64
    %48 = llvm.mlir.constant(4 : index) : i64
    %49 = llvm.mlir.constant(4 : index) : i64
    %50 = llvm.mlir.null : !llvm.ptr<i32>
    %51 = llvm.getelementptr %50[%49] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %52 = llvm.ptrtoint %51 : !llvm.ptr<i32> to i64
    %53 = llvm.mlir.constant(16 : index) : i64
    %54 = llvm.add %52, %53  : i64
    %55 = llvm.call @malloc(%54) : (i64) -> !llvm.ptr<i8>
    %56 = llvm.bitcast %55 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %57 = llvm.ptrtoint %56 : !llvm.ptr<i32> to i64
    %58 = llvm.mlir.constant(1 : index) : i64
    %59 = llvm.sub %53, %58  : i64
    %60 = llvm.add %57, %59  : i64
    %61 = llvm.urem %60, %53  : i64
    %62 = llvm.sub %60, %61  : i64
    %63 = llvm.inttoptr %62 : i64 to !llvm.ptr<i32>
    %64 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %65 = llvm.insertvalue %56, %64[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %66 = llvm.insertvalue %63, %65[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %67 = llvm.mlir.constant(0 : index) : i64
    %68 = llvm.insertvalue %67, %66[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %69 = llvm.insertvalue %42, %68[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %70 = llvm.insertvalue %43, %69[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %71 = llvm.insertvalue %44, %70[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %72 = llvm.insertvalue %45, %71[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %73 = llvm.insertvalue %48, %72[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %74 = llvm.insertvalue %47, %73[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %75 = llvm.insertvalue %45, %74[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %76 = llvm.insertvalue %46, %75[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %77 = llvm.mlir.constant(0 : index) : i64
    %78 = llvm.mlir.constant(1 : index) : i64
    %79 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%77 : i64)
  ^bb1(%80: i64):  // 2 preds: ^bb0, ^bb11
    %81 = llvm.icmp "slt" %80, %78 : i64
    llvm.cond_br %81, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    %82 = llvm.mlir.constant(0 : index) : i64
    %83 = llvm.mlir.constant(2 : index) : i64
    %84 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%82 : i64)
  ^bb3(%85: i64):  // 2 preds: ^bb2, ^bb10
    %86 = llvm.icmp "slt" %85, %83 : i64
    llvm.cond_br %86, ^bb4, ^bb11
  ^bb4:  // pred: ^bb3
    %87 = llvm.mlir.constant(0 : index) : i64
    %88 = llvm.mlir.constant(1 : index) : i64
    %89 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%87 : i64)
  ^bb5(%90: i64):  // 2 preds: ^bb4, ^bb9
    %91 = llvm.icmp "slt" %90, %88 : i64
    llvm.cond_br %91, ^bb6, ^bb10
  ^bb6:  // pred: ^bb5
    %92 = llvm.mlir.constant(0 : index) : i64
    %93 = llvm.mlir.constant(2 : index) : i64
    %94 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%92 : i64)
  ^bb7(%95: i64):  // 2 preds: ^bb6, ^bb8
    %96 = llvm.icmp "slt" %95, %93 : i64
    llvm.cond_br %96, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %97 = llvm.extractvalue %76[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %98 = llvm.mlir.constant(4 : index) : i64
    %99 = llvm.mul %80, %98  : i64
    %100 = llvm.mlir.constant(2 : index) : i64
    %101 = llvm.mul %85, %100  : i64
    %102 = llvm.add %99, %101  : i64
    %103 = llvm.mlir.constant(2 : index) : i64
    %104 = llvm.mul %90, %103  : i64
    %105 = llvm.add %102, %104  : i64
    %106 = llvm.add %105, %95  : i64
    %107 = llvm.getelementptr %97[%106] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %27, %107 : !llvm.ptr<i32>
    %108 = llvm.add %95, %94  : i64
    llvm.br ^bb7(%108 : i64)
  ^bb9:  // pred: ^bb7
    %109 = llvm.add %90, %89  : i64
    llvm.br ^bb5(%109 : i64)
  ^bb10:  // pred: ^bb5
    %110 = llvm.add %85, %84  : i64
    llvm.br ^bb3(%110 : i64)
  ^bb11:  // pred: ^bb3
    %111 = llvm.add %80, %79  : i64
    llvm.br ^bb1(%111 : i64)
  ^bb12:  // pred: ^bb1
    %112 = llvm.mlir.constant(0 : index) : i64
    %113 = llvm.mlir.constant(1 : index) : i64
    %114 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%112 : i64)
  ^bb13(%115: i64):  // 2 preds: ^bb12, ^bb26
    %116 = llvm.icmp "slt" %115, %113 : i64
    llvm.cond_br %116, ^bb14, ^bb27
  ^bb14:  // pred: ^bb13
    %117 = llvm.mlir.constant(0 : index) : i64
    %118 = llvm.mlir.constant(2 : index) : i64
    %119 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb15(%117 : i64)
  ^bb15(%120: i64):  // 2 preds: ^bb14, ^bb25
    %121 = llvm.icmp "slt" %120, %118 : i64
    llvm.cond_br %121, ^bb16, ^bb26
  ^bb16:  // pred: ^bb15
    %122 = llvm.mlir.constant(0 : index) : i64
    %123 = llvm.mlir.constant(1 : index) : i64
    %124 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb17(%122 : i64)
  ^bb17(%125: i64):  // 2 preds: ^bb16, ^bb24
    %126 = llvm.icmp "slt" %125, %123 : i64
    llvm.cond_br %126, ^bb18, ^bb25
  ^bb18:  // pred: ^bb17
    %127 = llvm.mlir.constant(0 : index) : i64
    %128 = llvm.mlir.constant(1 : index) : i64
    %129 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%127 : i64)
  ^bb19(%130: i64):  // 2 preds: ^bb18, ^bb23
    %131 = llvm.icmp "slt" %130, %128 : i64
    llvm.cond_br %131, ^bb20, ^bb24
  ^bb20:  // pred: ^bb19
    %132 = llvm.mlir.constant(0 : index) : i64
    %133 = llvm.mlir.constant(2 : index) : i64
    %134 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb21(%132 : i64)
  ^bb21(%135: i64):  // 2 preds: ^bb20, ^bb22
    %136 = llvm.icmp "slt" %135, %133 : i64
    llvm.cond_br %136, ^bb22, ^bb23
  ^bb22:  // pred: ^bb21
    %137 = llvm.extractvalue %13[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %138 = llvm.mlir.constant(4 : index) : i64
    %139 = llvm.mul %115, %138  : i64
    %140 = llvm.mlir.constant(2 : index) : i64
    %141 = llvm.mul %120, %140  : i64
    %142 = llvm.add %139, %141  : i64
    %143 = llvm.mlir.constant(2 : index) : i64
    %144 = llvm.mul %125, %143  : i64
    %145 = llvm.add %142, %144  : i64
    %146 = llvm.mlir.constant(2 : index) : i64
    %147 = llvm.mul %130, %146  : i64
    %148 = llvm.add %145, %147  : i64
    %149 = llvm.add %148, %135  : i64
    %150 = llvm.getelementptr %137[%149] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %151 = llvm.load %150 : !llvm.ptr<i32>
    %152 = llvm.extractvalue %76[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %153 = llvm.mlir.constant(4 : index) : i64
    %154 = llvm.mul %115, %153  : i64
    %155 = llvm.mlir.constant(2 : index) : i64
    %156 = llvm.mul %120, %155  : i64
    %157 = llvm.add %154, %156  : i64
    %158 = llvm.mlir.constant(2 : index) : i64
    %159 = llvm.mul %130, %158  : i64
    %160 = llvm.add %157, %159  : i64
    %161 = llvm.add %160, %135  : i64
    %162 = llvm.getelementptr %152[%161] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %163 = llvm.load %162 : !llvm.ptr<i32>
    %164 = llvm.icmp "slt" %163, %151 : i32
    %165 = llvm.select %164, %163, %151 : i1, i32
    %166 = llvm.extractvalue %76[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %167 = llvm.mlir.constant(4 : index) : i64
    %168 = llvm.mul %115, %167  : i64
    %169 = llvm.mlir.constant(2 : index) : i64
    %170 = llvm.mul %120, %169  : i64
    %171 = llvm.add %168, %170  : i64
    %172 = llvm.mlir.constant(2 : index) : i64
    %173 = llvm.mul %130, %172  : i64
    %174 = llvm.add %171, %173  : i64
    %175 = llvm.add %174, %135  : i64
    %176 = llvm.getelementptr %166[%175] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %165, %176 : !llvm.ptr<i32>
    %177 = llvm.add %135, %134  : i64
    llvm.br ^bb21(%177 : i64)
  ^bb23:  // pred: ^bb21
    %178 = llvm.add %130, %129  : i64
    llvm.br ^bb19(%178 : i64)
  ^bb24:  // pred: ^bb19
    %179 = llvm.add %125, %124  : i64
    llvm.br ^bb17(%179 : i64)
  ^bb25:  // pred: ^bb17
    %180 = llvm.add %120, %119  : i64
    llvm.br ^bb15(%180 : i64)
  ^bb26:  // pred: ^bb15
    %181 = llvm.add %115, %114  : i64
    llvm.br ^bb13(%181 : i64)
  ^bb27:  // pred: ^bb13
    %182 = llvm.mlir.constant(1 : index) : i64
    %183 = llvm.mlir.constant(2 : index) : i64
    %184 = llvm.mlir.constant(1 : index) : i64
    %185 = llvm.mlir.constant(2 : index) : i64
    %186 = llvm.mlir.constant(1 : index) : i64
    %187 = llvm.mlir.constant(2 : index) : i64
    %188 = llvm.mlir.constant(4 : index) : i64
    %189 = llvm.mlir.constant(4 : index) : i64
    %190 = llvm.mlir.null : !llvm.ptr<i32>
    %191 = llvm.getelementptr %190[%189] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %192 = llvm.ptrtoint %191 : !llvm.ptr<i32> to i64
    %193 = llvm.mlir.constant(16 : index) : i64
    %194 = llvm.add %192, %193  : i64
    %195 = llvm.call @malloc(%194) : (i64) -> !llvm.ptr<i8>
    %196 = llvm.bitcast %195 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %197 = llvm.ptrtoint %196 : !llvm.ptr<i32> to i64
    %198 = llvm.mlir.constant(1 : index) : i64
    %199 = llvm.sub %193, %198  : i64
    %200 = llvm.add %197, %199  : i64
    %201 = llvm.urem %200, %193  : i64
    %202 = llvm.sub %200, %201  : i64
    %203 = llvm.inttoptr %202 : i64 to !llvm.ptr<i32>
    %204 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %205 = llvm.insertvalue %196, %204[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %206 = llvm.insertvalue %203, %205[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %207 = llvm.mlir.constant(0 : index) : i64
    %208 = llvm.insertvalue %207, %206[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %209 = llvm.insertvalue %182, %208[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %210 = llvm.insertvalue %183, %209[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %211 = llvm.insertvalue %184, %210[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %212 = llvm.insertvalue %185, %211[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %213 = llvm.insertvalue %188, %212[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %214 = llvm.insertvalue %187, %213[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %215 = llvm.insertvalue %185, %214[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %216 = llvm.insertvalue %186, %215[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %217 = llvm.mlir.constant(0 : index) : i64
    %218 = llvm.mlir.constant(1 : index) : i64
    %219 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb28(%217 : i64)
  ^bb28(%220: i64):  // 2 preds: ^bb27, ^bb38
    %221 = llvm.icmp "slt" %220, %218 : i64
    llvm.cond_br %221, ^bb29, ^bb39
  ^bb29:  // pred: ^bb28
    %222 = llvm.mlir.constant(0 : index) : i64
    %223 = llvm.mlir.constant(2 : index) : i64
    %224 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb30(%222 : i64)
  ^bb30(%225: i64):  // 2 preds: ^bb29, ^bb37
    %226 = llvm.icmp "slt" %225, %223 : i64
    llvm.cond_br %226, ^bb31, ^bb38
  ^bb31:  // pred: ^bb30
    %227 = llvm.mlir.constant(0 : index) : i64
    %228 = llvm.mlir.constant(1 : index) : i64
    %229 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb32(%227 : i64)
  ^bb32(%230: i64):  // 2 preds: ^bb31, ^bb36
    %231 = llvm.icmp "slt" %230, %228 : i64
    llvm.cond_br %231, ^bb33, ^bb37
  ^bb33:  // pred: ^bb32
    %232 = llvm.mlir.constant(0 : index) : i64
    %233 = llvm.mlir.constant(2 : index) : i64
    %234 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb34(%232 : i64)
  ^bb34(%235: i64):  // 2 preds: ^bb33, ^bb35
    %236 = llvm.icmp "slt" %235, %233 : i64
    llvm.cond_br %236, ^bb35, ^bb36
  ^bb35:  // pred: ^bb34
    %237 = llvm.extractvalue %25[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %238 = llvm.mlir.constant(2 : index) : i64
    %239 = llvm.mul %220, %238  : i64
    %240 = llvm.add %239, %225  : i64
    %241 = llvm.add %240, %230  : i64
    %242 = llvm.add %241, %26  : i64
    %243 = llvm.getelementptr %237[%242] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %244 = llvm.load %243 : !llvm.ptr<i32>
    %245 = llvm.extractvalue %76[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %246 = llvm.mlir.constant(4 : index) : i64
    %247 = llvm.mul %220, %246  : i64
    %248 = llvm.mlir.constant(2 : index) : i64
    %249 = llvm.mul %225, %248  : i64
    %250 = llvm.add %247, %249  : i64
    %251 = llvm.mlir.constant(2 : index) : i64
    %252 = llvm.mul %230, %251  : i64
    %253 = llvm.add %250, %252  : i64
    %254 = llvm.add %253, %235  : i64
    %255 = llvm.getelementptr %245[%254] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %256 = llvm.load %255 : !llvm.ptr<i32>
    %257 = llvm.add %244, %256  : i32
    %258 = llvm.extractvalue %216[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %259 = llvm.mlir.constant(4 : index) : i64
    %260 = llvm.mul %220, %259  : i64
    %261 = llvm.mlir.constant(2 : index) : i64
    %262 = llvm.mul %225, %261  : i64
    %263 = llvm.add %260, %262  : i64
    %264 = llvm.mlir.constant(2 : index) : i64
    %265 = llvm.mul %230, %264  : i64
    %266 = llvm.add %263, %265  : i64
    %267 = llvm.add %266, %235  : i64
    %268 = llvm.getelementptr %258[%267] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %257, %268 : !llvm.ptr<i32>
    %269 = llvm.add %235, %234  : i64
    llvm.br ^bb34(%269 : i64)
  ^bb36:  // pred: ^bb34
    %270 = llvm.add %230, %229  : i64
    llvm.br ^bb32(%270 : i64)
  ^bb37:  // pred: ^bb32
    %271 = llvm.add %225, %224  : i64
    llvm.br ^bb30(%271 : i64)
  ^bb38:  // pred: ^bb30
    %272 = llvm.add %220, %219  : i64
    llvm.br ^bb28(%272 : i64)
  ^bb39:  // pred: ^bb28
    %273 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %274 = llvm.extractvalue %216[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %275 = llvm.extractvalue %216[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %276 = llvm.insertvalue %274, %273[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %277 = llvm.insertvalue %275, %276[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %278 = llvm.mlir.constant(0 : index) : i64
    %279 = llvm.insertvalue %278, %277[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %280 = llvm.mlir.constant(4 : index) : i64
    %281 = llvm.insertvalue %280, %279[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %282 = llvm.mlir.constant(1 : index) : i64
    %283 = llvm.insertvalue %282, %281[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %284 = llvm.mlir.constant(1 : index) : i64
    %285 = llvm.mlir.constant(2 : index) : i64
    %286 = llvm.mlir.constant(1 : index) : i64
    %287 = llvm.mlir.constant(2 : index) : i64
    %288 = llvm.mlir.constant(1 : index) : i64
    %289 = llvm.mlir.constant(2 : index) : i64
    %290 = llvm.mlir.constant(4 : index) : i64
    %291 = llvm.mlir.constant(4 : index) : i64
    %292 = llvm.mlir.null : !llvm.ptr<i32>
    %293 = llvm.getelementptr %292[%291] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %294 = llvm.ptrtoint %293 : !llvm.ptr<i32> to i64
    %295 = llvm.mlir.constant(16 : index) : i64
    %296 = llvm.add %294, %295  : i64
    %297 = llvm.call @malloc(%296) : (i64) -> !llvm.ptr<i8>
    %298 = llvm.bitcast %297 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %299 = llvm.ptrtoint %298 : !llvm.ptr<i32> to i64
    %300 = llvm.mlir.constant(1 : index) : i64
    %301 = llvm.sub %295, %300  : i64
    %302 = llvm.add %299, %301  : i64
    %303 = llvm.urem %302, %295  : i64
    %304 = llvm.sub %302, %303  : i64
    %305 = llvm.inttoptr %304 : i64 to !llvm.ptr<i32>
    %306 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %307 = llvm.insertvalue %298, %306[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %308 = llvm.insertvalue %305, %307[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %309 = llvm.mlir.constant(0 : index) : i64
    %310 = llvm.insertvalue %309, %308[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %311 = llvm.insertvalue %284, %310[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %312 = llvm.insertvalue %285, %311[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %313 = llvm.insertvalue %286, %312[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %314 = llvm.insertvalue %287, %313[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %315 = llvm.insertvalue %290, %314[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %316 = llvm.insertvalue %289, %315[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %317 = llvm.insertvalue %287, %316[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %318 = llvm.insertvalue %288, %317[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %319 = llvm.mlir.constant(0 : index) : i64
    %320 = llvm.mlir.constant(1 : index) : i64
    %321 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb40(%319 : i64)
  ^bb40(%322: i64):  // 2 preds: ^bb39, ^bb50
    %323 = llvm.icmp "slt" %322, %320 : i64
    llvm.cond_br %323, ^bb41, ^bb51
  ^bb41:  // pred: ^bb40
    %324 = llvm.mlir.constant(0 : index) : i64
    %325 = llvm.mlir.constant(2 : index) : i64
    %326 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb42(%324 : i64)
  ^bb42(%327: i64):  // 2 preds: ^bb41, ^bb49
    %328 = llvm.icmp "slt" %327, %325 : i64
    llvm.cond_br %328, ^bb43, ^bb50
  ^bb43:  // pred: ^bb42
    %329 = llvm.mlir.constant(0 : index) : i64
    %330 = llvm.mlir.constant(1 : index) : i64
    %331 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb44(%329 : i64)
  ^bb44(%332: i64):  // 2 preds: ^bb43, ^bb48
    %333 = llvm.icmp "slt" %332, %330 : i64
    llvm.cond_br %333, ^bb45, ^bb49
  ^bb45:  // pred: ^bb44
    %334 = llvm.mlir.constant(0 : index) : i64
    %335 = llvm.mlir.constant(2 : index) : i64
    %336 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb46(%334 : i64)
  ^bb46(%337: i64):  // 2 preds: ^bb45, ^bb47
    %338 = llvm.icmp "slt" %337, %335 : i64
    llvm.cond_br %338, ^bb47, ^bb48
  ^bb47:  // pred: ^bb46
    %339 = llvm.extractvalue %216[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %340 = llvm.mlir.constant(4 : index) : i64
    %341 = llvm.mul %322, %340  : i64
    %342 = llvm.mlir.constant(2 : index) : i64
    %343 = llvm.mul %327, %342  : i64
    %344 = llvm.add %341, %343  : i64
    %345 = llvm.mlir.constant(2 : index) : i64
    %346 = llvm.mul %332, %345  : i64
    %347 = llvm.add %344, %346  : i64
    %348 = llvm.add %347, %337  : i64
    %349 = llvm.getelementptr %339[%348] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %350 = llvm.load %349 : !llvm.ptr<i32>
    %351 = llvm.extractvalue %34[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %352 = llvm.load %351 : !llvm.ptr<i32>
    %353 = llvm.icmp "slt" %350, %352 : i32
    %354 = llvm.select %353, %352, %350 : i1, i32
    %355 = llvm.extractvalue %41[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %356 = llvm.load %355 : !llvm.ptr<i32>
    %357 = llvm.icmp "slt" %354, %356 : i32
    %358 = llvm.select %357, %354, %356 : i1, i32
    %359 = llvm.extractvalue %318[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %360 = llvm.mlir.constant(4 : index) : i64
    %361 = llvm.mul %322, %360  : i64
    %362 = llvm.mlir.constant(2 : index) : i64
    %363 = llvm.mul %327, %362  : i64
    %364 = llvm.add %361, %363  : i64
    %365 = llvm.mlir.constant(2 : index) : i64
    %366 = llvm.mul %332, %365  : i64
    %367 = llvm.add %364, %366  : i64
    %368 = llvm.add %367, %337  : i64
    %369 = llvm.getelementptr %359[%368] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %358, %369 : !llvm.ptr<i32>
    %370 = llvm.add %337, %336  : i64
    llvm.br ^bb46(%370 : i64)
  ^bb48:  // pred: ^bb46
    %371 = llvm.add %332, %331  : i64
    llvm.br ^bb44(%371 : i64)
  ^bb49:  // pred: ^bb44
    %372 = llvm.add %327, %326  : i64
    llvm.br ^bb42(%372 : i64)
  ^bb50:  // pred: ^bb42
    %373 = llvm.add %322, %321  : i64
    llvm.br ^bb40(%373 : i64)
  ^bb51:  // pred: ^bb40
    %374 = llvm.mlir.constant(1 : index) : i64
    %375 = llvm.mlir.constant(2 : index) : i64
    %376 = llvm.mlir.constant(1 : index) : i64
    %377 = llvm.mlir.constant(2 : index) : i64
    %378 = llvm.mlir.constant(1 : index) : i64
    %379 = llvm.mlir.constant(2 : index) : i64
    %380 = llvm.mlir.constant(4 : index) : i64
    %381 = llvm.mlir.constant(4 : index) : i64
    %382 = llvm.mlir.null : !llvm.ptr<i1>
    %383 = llvm.getelementptr %382[%381] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %384 = llvm.ptrtoint %383 : !llvm.ptr<i1> to i64
    %385 = llvm.mlir.constant(16 : index) : i64
    %386 = llvm.add %384, %385  : i64
    %387 = llvm.call @malloc(%386) : (i64) -> !llvm.ptr<i8>
    %388 = llvm.bitcast %387 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %389 = llvm.ptrtoint %388 : !llvm.ptr<i1> to i64
    %390 = llvm.mlir.constant(1 : index) : i64
    %391 = llvm.sub %385, %390  : i64
    %392 = llvm.add %389, %391  : i64
    %393 = llvm.urem %392, %385  : i64
    %394 = llvm.sub %392, %393  : i64
    %395 = llvm.inttoptr %394 : i64 to !llvm.ptr<i1>
    %396 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>
    %397 = llvm.insertvalue %388, %396[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %398 = llvm.insertvalue %395, %397[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %399 = llvm.mlir.constant(0 : index) : i64
    %400 = llvm.insertvalue %399, %398[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %401 = llvm.insertvalue %374, %400[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %402 = llvm.insertvalue %375, %401[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %403 = llvm.insertvalue %376, %402[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %404 = llvm.insertvalue %377, %403[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %405 = llvm.insertvalue %380, %404[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %406 = llvm.insertvalue %379, %405[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %407 = llvm.insertvalue %377, %406[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %408 = llvm.insertvalue %378, %407[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %409 = llvm.mlir.constant(0 : index) : i64
    %410 = llvm.mlir.constant(1 : index) : i64
    %411 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb52(%409 : i64)
  ^bb52(%412: i64):  // 2 preds: ^bb51, ^bb62
    %413 = llvm.icmp "slt" %412, %410 : i64
    llvm.cond_br %413, ^bb53, ^bb63
  ^bb53:  // pred: ^bb52
    %414 = llvm.mlir.constant(0 : index) : i64
    %415 = llvm.mlir.constant(2 : index) : i64
    %416 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb54(%414 : i64)
  ^bb54(%417: i64):  // 2 preds: ^bb53, ^bb61
    %418 = llvm.icmp "slt" %417, %415 : i64
    llvm.cond_br %418, ^bb55, ^bb62
  ^bb55:  // pred: ^bb54
    %419 = llvm.mlir.constant(0 : index) : i64
    %420 = llvm.mlir.constant(1 : index) : i64
    %421 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb56(%419 : i64)
  ^bb56(%422: i64):  // 2 preds: ^bb55, ^bb60
    %423 = llvm.icmp "slt" %422, %420 : i64
    llvm.cond_br %423, ^bb57, ^bb61
  ^bb57:  // pred: ^bb56
    %424 = llvm.mlir.constant(0 : index) : i64
    %425 = llvm.mlir.constant(2 : index) : i64
    %426 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb58(%424 : i64)
  ^bb58(%427: i64):  // 2 preds: ^bb57, ^bb59
    %428 = llvm.icmp "slt" %427, %425 : i64
    llvm.cond_br %428, ^bb59, ^bb60
  ^bb59:  // pred: ^bb58
    %429 = llvm.extractvalue %216[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %430 = llvm.mlir.constant(4 : index) : i64
    %431 = llvm.mul %412, %430  : i64
    %432 = llvm.mlir.constant(2 : index) : i64
    %433 = llvm.mul %417, %432  : i64
    %434 = llvm.add %431, %433  : i64
    %435 = llvm.mlir.constant(2 : index) : i64
    %436 = llvm.mul %422, %435  : i64
    %437 = llvm.add %434, %436  : i64
    %438 = llvm.add %437, %427  : i64
    %439 = llvm.getelementptr %429[%438] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %440 = llvm.load %439 : !llvm.ptr<i32>
    %441 = llvm.extractvalue %318[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %442 = llvm.mlir.constant(4 : index) : i64
    %443 = llvm.mul %412, %442  : i64
    %444 = llvm.mlir.constant(2 : index) : i64
    %445 = llvm.mul %417, %444  : i64
    %446 = llvm.add %443, %445  : i64
    %447 = llvm.mlir.constant(2 : index) : i64
    %448 = llvm.mul %422, %447  : i64
    %449 = llvm.add %446, %448  : i64
    %450 = llvm.add %449, %427  : i64
    %451 = llvm.getelementptr %441[%450] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %452 = llvm.load %451 : !llvm.ptr<i32>
    %453 = llvm.icmp "eq" %440, %452 : i32
    %454 = llvm.extractvalue %408[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %455 = llvm.mlir.constant(4 : index) : i64
    %456 = llvm.mul %412, %455  : i64
    %457 = llvm.mlir.constant(2 : index) : i64
    %458 = llvm.mul %417, %457  : i64
    %459 = llvm.add %456, %458  : i64
    %460 = llvm.mlir.constant(2 : index) : i64
    %461 = llvm.mul %422, %460  : i64
    %462 = llvm.add %459, %461  : i64
    %463 = llvm.add %462, %427  : i64
    %464 = llvm.getelementptr %454[%463] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %453, %464 : !llvm.ptr<i1>
    %465 = llvm.add %427, %426  : i64
    llvm.br ^bb58(%465 : i64)
  ^bb60:  // pred: ^bb58
    %466 = llvm.add %422, %421  : i64
    llvm.br ^bb56(%466 : i64)
  ^bb61:  // pred: ^bb56
    %467 = llvm.add %417, %416  : i64
    llvm.br ^bb54(%467 : i64)
  ^bb62:  // pred: ^bb54
    %468 = llvm.add %412, %411  : i64
    llvm.br ^bb52(%468 : i64)
  ^bb63:  // pred: ^bb52
    %469 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>
    %470 = llvm.insertvalue %283, %469[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %471 = llvm.insertvalue %408, %470[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> 
    llvm.return %471 : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>>, %arg2: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) attributes {input_names = ["v1_0", "v3_0"], llvm.emit_c_interface, output_names = ["v4_0", "v0_0"]} {
    %0 = llvm.load %arg1 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>>
    %1 = llvm.extractvalue %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %2 = llvm.extractvalue %0[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %3 = llvm.extractvalue %0[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %4 = llvm.extractvalue %0[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %5 = llvm.extractvalue %0[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %6 = llvm.extractvalue %0[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %7 = llvm.extractvalue %0[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %8 = llvm.extractvalue %0[3, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %9 = llvm.extractvalue %0[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %10 = llvm.extractvalue %0[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %11 = llvm.extractvalue %0[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %12 = llvm.extractvalue %0[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %13 = llvm.extractvalue %0[4, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %14 = llvm.load %arg2 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %15 = llvm.extractvalue %14[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %16 = llvm.extractvalue %14[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %17 = llvm.extractvalue %14[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %18 = llvm.extractvalue %14[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %19 = llvm.extractvalue %14[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %20 = llvm.extractvalue %14[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %21 = llvm.extractvalue %14[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %22 = llvm.extractvalue %14[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %23 = llvm.extractvalue %14[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %24 = llvm.extractvalue %14[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %25 = llvm.extractvalue %14[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %26 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11, %12, %13, %15, %16, %17, %18, %19, %20, %21, %22, %23, %24, %25) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>
    llvm.store %26, %arg0 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %3 = llvm.mlir.constant(0 : i64) : i64
    %4 = llvm.getelementptr %0[%3] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %5 = llvm.load %4 : !llvm.ptr<ptr<i8>>
    %6 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>>
    %7 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>
    %8 = llvm.call @omTensorGetDataPtr(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %9 = llvm.bitcast %8 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %10 = llvm.insertvalue %9, %7[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %11 = llvm.insertvalue %9, %10[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %12 = llvm.mlir.constant(0 : i64) : i64
    %13 = llvm.insertvalue %12, %11[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %14 = llvm.call @omTensorGetShape(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %15 = llvm.call @omTensorGetStrides(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %16 = llvm.mlir.constant(0 : i64) : i64
    %17 = llvm.getelementptr %14[%16] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %18 = llvm.load %17 : !llvm.ptr<i64>
    %19 = llvm.insertvalue %18, %13[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %20 = llvm.getelementptr %15[%16] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %21 = llvm.load %20 : !llvm.ptr<i64>
    %22 = llvm.insertvalue %21, %19[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %23 = llvm.mlir.constant(1 : i64) : i64
    %24 = llvm.getelementptr %14[%23] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %25 = llvm.load %24 : !llvm.ptr<i64>
    %26 = llvm.insertvalue %25, %22[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %27 = llvm.getelementptr %15[%23] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %28 = llvm.load %27 : !llvm.ptr<i64>
    %29 = llvm.insertvalue %28, %26[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %30 = llvm.mlir.constant(2 : i64) : i64
    %31 = llvm.getelementptr %14[%30] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %32 = llvm.load %31 : !llvm.ptr<i64>
    %33 = llvm.insertvalue %32, %29[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %34 = llvm.getelementptr %15[%30] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %35 = llvm.load %34 : !llvm.ptr<i64>
    %36 = llvm.insertvalue %35, %33[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %37 = llvm.mlir.constant(3 : i64) : i64
    %38 = llvm.getelementptr %14[%37] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %39 = llvm.load %38 : !llvm.ptr<i64>
    %40 = llvm.insertvalue %39, %36[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %41 = llvm.getelementptr %15[%37] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %42 = llvm.load %41 : !llvm.ptr<i64>
    %43 = llvm.insertvalue %42, %40[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %44 = llvm.mlir.constant(4 : i64) : i64
    %45 = llvm.getelementptr %14[%44] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %46 = llvm.load %45 : !llvm.ptr<i64>
    %47 = llvm.insertvalue %46, %43[3, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %48 = llvm.getelementptr %15[%44] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %49 = llvm.load %48 : !llvm.ptr<i64>
    %50 = llvm.insertvalue %49, %47[4, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    llvm.store %50, %6 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>>
    %51 = llvm.mlir.constant(1 : i64) : i64
    %52 = llvm.getelementptr %0[%51] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %53 = llvm.load %52 : !llvm.ptr<ptr<i8>>
    %54 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %55 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %56 = llvm.call @omTensorGetDataPtr(%53) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %57 = llvm.bitcast %56 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %58 = llvm.insertvalue %57, %55[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %59 = llvm.insertvalue %57, %58[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %60 = llvm.mlir.constant(0 : i64) : i64
    %61 = llvm.insertvalue %60, %59[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %62 = llvm.call @omTensorGetShape(%53) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %63 = llvm.call @omTensorGetStrides(%53) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %64 = llvm.mlir.constant(0 : i64) : i64
    %65 = llvm.getelementptr %62[%64] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %66 = llvm.load %65 : !llvm.ptr<i64>
    %67 = llvm.insertvalue %66, %61[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %68 = llvm.getelementptr %63[%64] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %69 = llvm.load %68 : !llvm.ptr<i64>
    %70 = llvm.insertvalue %69, %67[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %71 = llvm.mlir.constant(1 : i64) : i64
    %72 = llvm.getelementptr %62[%71] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %73 = llvm.load %72 : !llvm.ptr<i64>
    %74 = llvm.insertvalue %73, %70[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %75 = llvm.getelementptr %63[%71] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %76 = llvm.load %75 : !llvm.ptr<i64>
    %77 = llvm.insertvalue %76, %74[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %78 = llvm.mlir.constant(2 : i64) : i64
    %79 = llvm.getelementptr %62[%78] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %80 = llvm.load %79 : !llvm.ptr<i64>
    %81 = llvm.insertvalue %80, %77[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %82 = llvm.getelementptr %63[%78] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %83 = llvm.load %82 : !llvm.ptr<i64>
    %84 = llvm.insertvalue %83, %81[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %85 = llvm.mlir.constant(3 : i64) : i64
    %86 = llvm.getelementptr %62[%85] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %87 = llvm.load %86 : !llvm.ptr<i64>
    %88 = llvm.insertvalue %87, %84[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %89 = llvm.getelementptr %63[%85] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %90 = llvm.load %89 : !llvm.ptr<i64>
    %91 = llvm.insertvalue %90, %88[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    llvm.store %91, %54 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    llvm.call @_mlir_ciface_main_graph(%2, %6, %54) : (!llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) -> ()
    %92 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %93 = llvm.extractvalue %92[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %94 = llvm.extractvalue %92[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %95 = llvm.mlir.constant(2 : i64) : i64
    %96 = llvm.mlir.constant(16 : i64) : i64
    %97 = llvm.call @malloc(%96) : (i64) -> !llvm.ptr<i8>
    %98 = llvm.bitcast %97 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %99 = llvm.mlir.constant(1 : i64) : i64
    %100 = llvm.call @omTensorCreateUntyped(%99) : (i64) -> !llvm.ptr<i8>
    %101 = llvm.mlir.constant(1 : i64) : i64
    %102 = llvm.extractvalue %93[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %103 = llvm.bitcast %102 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %104 = llvm.extractvalue %93[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %105 = llvm.bitcast %104 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%100, %101, %103, %105) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %106 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%100, %106) : (!llvm.ptr<i8>, i64) -> ()
    %107 = llvm.call @omTensorGetShape(%100) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %108 = llvm.call @omTensorGetStrides(%100) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %109 = llvm.mlir.constant(0 : i64) : i64
    %110 = llvm.extractvalue %93[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %111 = llvm.getelementptr %107[%109] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %110, %111 : !llvm.ptr<i64>
    %112 = llvm.extractvalue %93[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %113 = llvm.getelementptr %108[%109] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %112, %113 : !llvm.ptr<i64>
    %114 = llvm.mlir.constant(0 : i64) : i64
    %115 = llvm.getelementptr %98[%114] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %100, %115 : !llvm.ptr<ptr<i8>>
    %116 = llvm.mlir.constant(4 : i64) : i64
    %117 = llvm.call @omTensorCreateUntyped(%116) : (i64) -> !llvm.ptr<i8>
    %118 = llvm.mlir.constant(1 : i64) : i64
    %119 = llvm.extractvalue %94[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %120 = llvm.bitcast %119 : !llvm.ptr<i1> to !llvm.ptr<i8>
    %121 = llvm.extractvalue %94[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %122 = llvm.bitcast %121 : !llvm.ptr<i1> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%117, %118, %120, %122) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %123 = llvm.mlir.constant(9 : i64) : i64
    llvm.call @omTensorSetDataType(%117, %123) : (!llvm.ptr<i8>, i64) -> ()
    %124 = llvm.call @omTensorGetShape(%117) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %125 = llvm.call @omTensorGetStrides(%117) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %126 = llvm.mlir.constant(0 : i64) : i64
    %127 = llvm.extractvalue %94[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %128 = llvm.getelementptr %124[%126] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %127, %128 : !llvm.ptr<i64>
    %129 = llvm.extractvalue %94[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %130 = llvm.getelementptr %125[%126] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %129, %130 : !llvm.ptr<i64>
    %131 = llvm.mlir.constant(1 : i64) : i64
    %132 = llvm.extractvalue %94[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %133 = llvm.getelementptr %124[%131] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %132, %133 : !llvm.ptr<i64>
    %134 = llvm.extractvalue %94[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %135 = llvm.getelementptr %125[%131] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %134, %135 : !llvm.ptr<i64>
    %136 = llvm.mlir.constant(2 : i64) : i64
    %137 = llvm.extractvalue %94[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %138 = llvm.getelementptr %124[%136] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %137, %138 : !llvm.ptr<i64>
    %139 = llvm.extractvalue %94[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %140 = llvm.getelementptr %125[%136] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %139, %140 : !llvm.ptr<i64>
    %141 = llvm.mlir.constant(3 : i64) : i64
    %142 = llvm.extractvalue %94[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %143 = llvm.getelementptr %124[%141] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %142, %143 : !llvm.ptr<i64>
    %144 = llvm.extractvalue %94[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %145 = llvm.getelementptr %125[%141] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %144, %145 : !llvm.ptr<i64>
    %146 = llvm.mlir.constant(1 : i64) : i64
    %147 = llvm.getelementptr %98[%146] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %117, %147 : !llvm.ptr<ptr<i8>>
    %148 = llvm.call @omTensorListCreate(%98, %95, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %148 : !llvm.ptr<i8>
  }
  llvm.mlir.global internal constant @_entry_point_arrays() {addr_space = 0 : i32} : !llvm.array<2 x ptr<i8>> {
    %0 = llvm.mlir.undef : !llvm.array<2 x ptr<i8>>
    %1 = llvm.mlir.addressof @_entry_point_0 : !llvm.ptr<array<15 x i8>>
    %2 = llvm.mlir.constant(0 : i64) : i64
    %3 = llvm.getelementptr %1[%2, %2] : (!llvm.ptr<array<15 x i8>>, i64, i64) -> !llvm.ptr<i8>
    %4 = llvm.insertvalue %3, %0[0] : !llvm.array<2 x ptr<i8>> 
    %5 = llvm.mlir.null : !llvm.ptr<i8>
    %6 = llvm.insertvalue %5, %4[1] : !llvm.array<2 x ptr<i8>> 
    llvm.return %6 : !llvm.array<2 x ptr<i8>>
  }
  llvm.func @omQueryEntryPoints(%arg0: !llvm.ptr<i64>) -> !llvm.ptr<ptr<i8>> {
    %0 = llvm.mlir.null : !llvm.ptr<i64>
    %1 = llvm.icmp "ne" %arg0, %0 : !llvm.ptr<i64>
    llvm.cond_br %1, ^bb1, ^bb2
  ^bb1:  // pred: ^bb0
    %2 = llvm.mlir.constant(0 : i64) : i64
    %3 = llvm.getelementptr %arg0[%2] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %4 = llvm.mlir.constant(1 : i64) : i64
    llvm.store %4, %3 : !llvm.ptr<i64>
    llvm.br ^bb2
  ^bb2:  // 2 preds: ^bb0, ^bb1
    %5 = llvm.mlir.addressof @_entry_point_arrays : !llvm.ptr<array<2 x ptr<i8>>>
    %6 = llvm.bitcast %5 : !llvm.ptr<array<2 x ptr<i8>>> to !llvm.ptr<ptr<i8>>
    llvm.return %6 : !llvm.ptr<ptr<i8>>
  }
  llvm.func @omInputSignature(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.mlir.constant(0 : i32) : i32
    %1 = llvm.mlir.addressof @_entry_point_0 : !llvm.ptr<array<15 x i8>>
    %2 = llvm.mlir.constant(0 : i64) : i64
    %3 = llvm.getelementptr %1[%2, %2] : (!llvm.ptr<array<15 x i8>>, i64, i64) -> !llvm.ptr<i8>
    %4 = llvm.mlir.constant(15 : i64) : i64
    %5 = llvm.call @strncmp(%arg0, %3, %4) : (!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
    %6 = llvm.icmp "eq" %5, %0 : i32
    llvm.cond_br %6, ^bb1, ^bb2
  ^bb1:  // pred: ^bb0
    %7 = llvm.mlir.addressof @_entry_point_0_in_sig : !llvm.ptr<array<146 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<146 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
  llvm.func @omOutputSignature(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.mlir.constant(0 : i32) : i32
    %1 = llvm.mlir.addressof @_entry_point_0 : !llvm.ptr<array<15 x i8>>
    %2 = llvm.mlir.constant(0 : i64) : i64
    %3 = llvm.getelementptr %1[%2, %2] : (!llvm.ptr<array<15 x i8>>, i64, i64) -> !llvm.ptr<i8>
    %4 = llvm.mlir.constant(15 : i64) : i64
    %5 = llvm.call @strncmp(%arg0, %3, %4) : (!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
    %6 = llvm.icmp "eq" %5, %0 : i32
    llvm.cond_br %6, ^bb1, ^bb2
  ^bb1:  // pred: ^bb0
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<128 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<128 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

