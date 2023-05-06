module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 2 , 2 , 2] , \22name\22 : \22v1_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [] , \22name\22 : \22v4_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i1\22 , \22dims\22 : [2 , 2 , 1 , 2] , \22name\22 : \22v3_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.func @llvm.memcpy.p0.p0.i64(!llvm.ptr<i8>, !llvm.ptr<i8>, i64, i1)
  llvm.func @malloc(i64) -> !llvm.ptr<i8>
  llvm.mlir.global internal constant @constant_1(dense<1> : tensor<i32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i32>
  llvm.mlir.global internal constant @constant_0(dense<-1> : tensor<i32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i32>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64, %arg11: !llvm.ptr<i32>, %arg12: !llvm.ptr<i32>, %arg13: i64) -> !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> attributes {input_names = ["v1_0", "v4_0"], llvm.emit_c_interface, output_names = ["v3_0"]} {
    %0 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %1 = llvm.insertvalue %arg0, %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %2 = llvm.insertvalue %arg1, %1[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %3 = llvm.insertvalue %arg2, %2[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %4 = llvm.insertvalue %arg3, %3[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %5 = llvm.insertvalue %arg7, %4[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %6 = llvm.insertvalue %arg4, %5[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %7 = llvm.insertvalue %arg8, %6[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %8 = llvm.insertvalue %arg5, %7[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %9 = llvm.insertvalue %arg9, %8[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %10 = llvm.insertvalue %arg6, %9[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %11 = llvm.insertvalue %arg10, %10[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %12 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64)>
    %13 = llvm.insertvalue %arg11, %12[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %14 = llvm.insertvalue %arg12, %13[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %15 = llvm.insertvalue %arg13, %14[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %16 = llvm.mlir.constant(2 : i64) : i64
    %17 = llvm.mlir.addressof @constant_0 : !llvm.ptr<array<1 x i32>>
    %18 = llvm.bitcast %17 : !llvm.ptr<array<1 x i32>> to !llvm.ptr<i32>
    %19 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64)>
    %20 = llvm.insertvalue %18, %19[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %21 = llvm.insertvalue %18, %20[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %22 = llvm.mlir.constant(0 : index) : i64
    %23 = llvm.insertvalue %22, %21[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %24 = llvm.mlir.addressof @constant_1 : !llvm.ptr<array<1 x i32>>
    %25 = llvm.bitcast %24 : !llvm.ptr<array<1 x i32>> to !llvm.ptr<i32>
    %26 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64)>
    %27 = llvm.insertvalue %25, %26[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %28 = llvm.insertvalue %25, %27[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %29 = llvm.mlir.constant(0 : index) : i64
    %30 = llvm.insertvalue %29, %28[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %31 = llvm.mlir.constant(2 : index) : i64
    %32 = llvm.mlir.constant(2 : index) : i64
    %33 = llvm.mlir.constant(1 : index) : i64
    %34 = llvm.mlir.constant(2 : index) : i64
    %35 = llvm.mlir.constant(1 : index) : i64
    %36 = llvm.mlir.constant(2 : index) : i64
    %37 = llvm.mlir.constant(4 : index) : i64
    %38 = llvm.mlir.constant(8 : index) : i64
    %39 = llvm.mlir.null : !llvm.ptr<i32>
    %40 = llvm.getelementptr %39[%38] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %41 = llvm.ptrtoint %40 : !llvm.ptr<i32> to i64
    %42 = llvm.mlir.constant(16 : index) : i64
    %43 = llvm.add %41, %42  : i64
    %44 = llvm.call @malloc(%43) : (i64) -> !llvm.ptr<i8>
    %45 = llvm.bitcast %44 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %46 = llvm.ptrtoint %45 : !llvm.ptr<i32> to i64
    %47 = llvm.mlir.constant(1 : index) : i64
    %48 = llvm.sub %42, %47  : i64
    %49 = llvm.add %46, %48  : i64
    %50 = llvm.urem %49, %42  : i64
    %51 = llvm.sub %49, %50  : i64
    %52 = llvm.inttoptr %51 : i64 to !llvm.ptr<i32>
    %53 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %54 = llvm.insertvalue %45, %53[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %55 = llvm.insertvalue %52, %54[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %56 = llvm.mlir.constant(0 : index) : i64
    %57 = llvm.insertvalue %56, %55[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %58 = llvm.insertvalue %31, %57[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %59 = llvm.insertvalue %32, %58[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %60 = llvm.insertvalue %33, %59[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %61 = llvm.insertvalue %34, %60[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %62 = llvm.insertvalue %37, %61[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %63 = llvm.insertvalue %36, %62[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %64 = llvm.insertvalue %34, %63[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %65 = llvm.insertvalue %35, %64[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %66 = llvm.mlir.constant(0 : index) : i64
    %67 = llvm.mlir.constant(1 : index) : i64
    %68 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%66 : i64)
  ^bb1(%69: i64):  // 2 preds: ^bb0, ^bb8
    %70 = llvm.icmp "slt" %69, %67 : i64
    llvm.cond_br %70, ^bb2, ^bb9
  ^bb2:  // pred: ^bb1
    %71 = llvm.mlir.constant(0 : index) : i64
    %72 = llvm.mlir.constant(2 : index) : i64
    %73 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%71 : i64)
  ^bb3(%74: i64):  // 2 preds: ^bb2, ^bb7
    %75 = llvm.icmp "slt" %74, %72 : i64
    llvm.cond_br %75, ^bb4, ^bb8
  ^bb4:  // pred: ^bb3
    %76 = llvm.mlir.constant(0 : index) : i64
    %77 = llvm.mlir.constant(2 : index) : i64
    %78 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%76 : i64)
  ^bb5(%79: i64):  // 2 preds: ^bb4, ^bb6
    %80 = llvm.icmp "slt" %79, %77 : i64
    llvm.cond_br %80, ^bb6, ^bb7
  ^bb6:  // pred: ^bb5
    %81 = llvm.mlir.constant(8 : index) : i64
    %82 = llvm.mul %69, %81  : i64
    %83 = llvm.mlir.constant(2 : index) : i64
    %84 = llvm.mul %79, %83  : i64
    %85 = llvm.add %82, %84  : i64
    %86 = llvm.mlir.constant(4 : index) : i64
    %87 = llvm.mul %74, %86  : i64
    %88 = llvm.add %85, %87  : i64
    %89 = llvm.mlir.constant(2 : index) : i64
    %90 = llvm.mul %69, %89  : i64
    %91 = llvm.mlir.constant(4 : index) : i64
    %92 = llvm.mul %79, %91  : i64
    %93 = llvm.add %90, %92  : i64
    %94 = llvm.mlir.constant(2 : index) : i64
    %95 = llvm.mul %74, %94  : i64
    %96 = llvm.add %93, %95  : i64
    %97 = llvm.mlir.constant(4 : i64) : i64
    %98 = llvm.extractvalue %65[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %99 = llvm.ptrtoint %98 : !llvm.ptr<i32> to i64
    %100 = llvm.bitcast %96 : i64 to i64
    %101 = llvm.mul %100, %97  : i64
    %102 = llvm.add %99, %101  : i64
    %103 = llvm.inttoptr %102 : i64 to !llvm.ptr<i32>
    %104 = llvm.bitcast %103 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %105 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %106 = llvm.ptrtoint %105 : !llvm.ptr<i32> to i64
    %107 = llvm.bitcast %88 : i64 to i64
    %108 = llvm.mul %107, %97  : i64
    %109 = llvm.add %106, %108  : i64
    %110 = llvm.inttoptr %109 : i64 to !llvm.ptr<i32>
    %111 = llvm.bitcast %110 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %112 = llvm.mul %16, %97  : i64
    %113 = llvm.sext %112 : i64 to i64
    %114 = llvm.mlir.constant(false) : i1
    llvm.call @llvm.memcpy.p0.p0.i64(%104, %111, %113, %114) : (!llvm.ptr<i8>, !llvm.ptr<i8>, i64, i1) -> ()
    %115 = llvm.add %79, %78  : i64
    llvm.br ^bb5(%115 : i64)
  ^bb7:  // pred: ^bb5
    %116 = llvm.add %74, %73  : i64
    llvm.br ^bb3(%116 : i64)
  ^bb8:  // pred: ^bb3
    %117 = llvm.add %69, %68  : i64
    llvm.br ^bb1(%117 : i64)
  ^bb9:  // pred: ^bb1
    %118 = llvm.mlir.constant(2 : index) : i64
    %119 = llvm.mlir.constant(2 : index) : i64
    %120 = llvm.mlir.constant(1 : index) : i64
    %121 = llvm.mlir.constant(2 : index) : i64
    %122 = llvm.mlir.constant(1 : index) : i64
    %123 = llvm.mlir.constant(2 : index) : i64
    %124 = llvm.mlir.constant(4 : index) : i64
    %125 = llvm.mlir.constant(8 : index) : i64
    %126 = llvm.mlir.null : !llvm.ptr<i32>
    %127 = llvm.getelementptr %126[%125] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %128 = llvm.ptrtoint %127 : !llvm.ptr<i32> to i64
    %129 = llvm.mlir.constant(16 : index) : i64
    %130 = llvm.add %128, %129  : i64
    %131 = llvm.call @malloc(%130) : (i64) -> !llvm.ptr<i8>
    %132 = llvm.bitcast %131 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %133 = llvm.ptrtoint %132 : !llvm.ptr<i32> to i64
    %134 = llvm.mlir.constant(1 : index) : i64
    %135 = llvm.sub %129, %134  : i64
    %136 = llvm.add %133, %135  : i64
    %137 = llvm.urem %136, %129  : i64
    %138 = llvm.sub %136, %137  : i64
    %139 = llvm.inttoptr %138 : i64 to !llvm.ptr<i32>
    %140 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %141 = llvm.insertvalue %132, %140[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %142 = llvm.insertvalue %139, %141[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %143 = llvm.mlir.constant(0 : index) : i64
    %144 = llvm.insertvalue %143, %142[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %145 = llvm.insertvalue %118, %144[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %146 = llvm.insertvalue %119, %145[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %147 = llvm.insertvalue %120, %146[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %148 = llvm.insertvalue %121, %147[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %149 = llvm.insertvalue %124, %148[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %150 = llvm.insertvalue %123, %149[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %151 = llvm.insertvalue %121, %150[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %152 = llvm.insertvalue %122, %151[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %153 = llvm.mlir.constant(0 : index) : i64
    %154 = llvm.mlir.constant(2 : index) : i64
    %155 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb10(%153 : i64)
  ^bb10(%156: i64):  // 2 preds: ^bb9, ^bb20
    %157 = llvm.icmp "slt" %156, %154 : i64
    llvm.cond_br %157, ^bb11, ^bb21
  ^bb11:  // pred: ^bb10
    %158 = llvm.mlir.constant(0 : index) : i64
    %159 = llvm.mlir.constant(2 : index) : i64
    %160 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb12(%158 : i64)
  ^bb12(%161: i64):  // 2 preds: ^bb11, ^bb19
    %162 = llvm.icmp "slt" %161, %159 : i64
    llvm.cond_br %162, ^bb13, ^bb20
  ^bb13:  // pred: ^bb12
    %163 = llvm.mlir.constant(0 : index) : i64
    %164 = llvm.mlir.constant(1 : index) : i64
    %165 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb14(%163 : i64)
  ^bb14(%166: i64):  // 2 preds: ^bb13, ^bb18
    %167 = llvm.icmp "slt" %166, %164 : i64
    llvm.cond_br %167, ^bb15, ^bb19
  ^bb15:  // pred: ^bb14
    %168 = llvm.mlir.constant(0 : index) : i64
    %169 = llvm.mlir.constant(2 : index) : i64
    %170 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb16(%168 : i64)
  ^bb16(%171: i64):  // 2 preds: ^bb15, ^bb17
    %172 = llvm.icmp "slt" %171, %169 : i64
    llvm.cond_br %172, ^bb17, ^bb18
  ^bb17:  // pred: ^bb16
    %173 = llvm.extractvalue %15[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %174 = llvm.load %173 : !llvm.ptr<i32>
    %175 = llvm.extractvalue %65[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %176 = llvm.mlir.constant(4 : index) : i64
    %177 = llvm.mul %156, %176  : i64
    %178 = llvm.mlir.constant(2 : index) : i64
    %179 = llvm.mul %161, %178  : i64
    %180 = llvm.add %177, %179  : i64
    %181 = llvm.mlir.constant(2 : index) : i64
    %182 = llvm.mul %166, %181  : i64
    %183 = llvm.add %180, %182  : i64
    %184 = llvm.add %183, %171  : i64
    %185 = llvm.getelementptr %175[%184] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %186 = llvm.load %185 : !llvm.ptr<i32>
    %187 = llvm.mul %174, %186  : i32
    %188 = llvm.extractvalue %152[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %189 = llvm.mlir.constant(4 : index) : i64
    %190 = llvm.mul %156, %189  : i64
    %191 = llvm.mlir.constant(2 : index) : i64
    %192 = llvm.mul %161, %191  : i64
    %193 = llvm.add %190, %192  : i64
    %194 = llvm.mlir.constant(2 : index) : i64
    %195 = llvm.mul %166, %194  : i64
    %196 = llvm.add %193, %195  : i64
    %197 = llvm.add %196, %171  : i64
    %198 = llvm.getelementptr %188[%197] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %187, %198 : !llvm.ptr<i32>
    %199 = llvm.add %171, %170  : i64
    llvm.br ^bb16(%199 : i64)
  ^bb18:  // pred: ^bb16
    %200 = llvm.add %166, %165  : i64
    llvm.br ^bb14(%200 : i64)
  ^bb19:  // pred: ^bb14
    %201 = llvm.add %161, %160  : i64
    llvm.br ^bb12(%201 : i64)
  ^bb20:  // pred: ^bb12
    %202 = llvm.add %156, %155  : i64
    llvm.br ^bb10(%202 : i64)
  ^bb21:  // pred: ^bb10
    %203 = llvm.mlir.constant(2 : index) : i64
    %204 = llvm.mlir.constant(2 : index) : i64
    %205 = llvm.mlir.constant(1 : index) : i64
    %206 = llvm.mlir.constant(2 : index) : i64
    %207 = llvm.mlir.constant(1 : index) : i64
    %208 = llvm.mlir.constant(2 : index) : i64
    %209 = llvm.mlir.constant(4 : index) : i64
    %210 = llvm.mlir.constant(8 : index) : i64
    %211 = llvm.mlir.null : !llvm.ptr<i32>
    %212 = llvm.getelementptr %211[%210] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %213 = llvm.ptrtoint %212 : !llvm.ptr<i32> to i64
    %214 = llvm.mlir.constant(16 : index) : i64
    %215 = llvm.add %213, %214  : i64
    %216 = llvm.call @malloc(%215) : (i64) -> !llvm.ptr<i8>
    %217 = llvm.bitcast %216 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %218 = llvm.ptrtoint %217 : !llvm.ptr<i32> to i64
    %219 = llvm.mlir.constant(1 : index) : i64
    %220 = llvm.sub %214, %219  : i64
    %221 = llvm.add %218, %220  : i64
    %222 = llvm.urem %221, %214  : i64
    %223 = llvm.sub %221, %222  : i64
    %224 = llvm.inttoptr %223 : i64 to !llvm.ptr<i32>
    %225 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %226 = llvm.insertvalue %217, %225[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %227 = llvm.insertvalue %224, %226[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %228 = llvm.mlir.constant(0 : index) : i64
    %229 = llvm.insertvalue %228, %227[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %230 = llvm.insertvalue %203, %229[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %231 = llvm.insertvalue %204, %230[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %232 = llvm.insertvalue %205, %231[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %233 = llvm.insertvalue %206, %232[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %234 = llvm.insertvalue %209, %233[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %235 = llvm.insertvalue %208, %234[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %236 = llvm.insertvalue %206, %235[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %237 = llvm.insertvalue %207, %236[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %238 = llvm.mlir.constant(0 : index) : i64
    %239 = llvm.mlir.constant(2 : index) : i64
    %240 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb22(%238 : i64)
  ^bb22(%241: i64):  // 2 preds: ^bb21, ^bb32
    %242 = llvm.icmp "slt" %241, %239 : i64
    llvm.cond_br %242, ^bb23, ^bb33
  ^bb23:  // pred: ^bb22
    %243 = llvm.mlir.constant(0 : index) : i64
    %244 = llvm.mlir.constant(2 : index) : i64
    %245 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb24(%243 : i64)
  ^bb24(%246: i64):  // 2 preds: ^bb23, ^bb31
    %247 = llvm.icmp "slt" %246, %244 : i64
    llvm.cond_br %247, ^bb25, ^bb32
  ^bb25:  // pred: ^bb24
    %248 = llvm.mlir.constant(0 : index) : i64
    %249 = llvm.mlir.constant(1 : index) : i64
    %250 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb26(%248 : i64)
  ^bb26(%251: i64):  // 2 preds: ^bb25, ^bb30
    %252 = llvm.icmp "slt" %251, %249 : i64
    llvm.cond_br %252, ^bb27, ^bb31
  ^bb27:  // pred: ^bb26
    %253 = llvm.mlir.constant(0 : index) : i64
    %254 = llvm.mlir.constant(2 : index) : i64
    %255 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb28(%253 : i64)
  ^bb28(%256: i64):  // 2 preds: ^bb27, ^bb29
    %257 = llvm.icmp "slt" %256, %254 : i64
    llvm.cond_br %257, ^bb29, ^bb30
  ^bb29:  // pred: ^bb28
    %258 = llvm.extractvalue %152[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %259 = llvm.mlir.constant(4 : index) : i64
    %260 = llvm.mul %241, %259  : i64
    %261 = llvm.mlir.constant(2 : index) : i64
    %262 = llvm.mul %246, %261  : i64
    %263 = llvm.add %260, %262  : i64
    %264 = llvm.mlir.constant(2 : index) : i64
    %265 = llvm.mul %251, %264  : i64
    %266 = llvm.add %263, %265  : i64
    %267 = llvm.add %266, %256  : i64
    %268 = llvm.getelementptr %258[%267] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %269 = llvm.load %268 : !llvm.ptr<i32>
    %270 = llvm.extractvalue %23[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %271 = llvm.load %270 : !llvm.ptr<i32>
    %272 = llvm.icmp "slt" %269, %271 : i32
    %273 = llvm.select %272, %271, %269 : i1, i32
    %274 = llvm.extractvalue %30[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %275 = llvm.load %274 : !llvm.ptr<i32>
    %276 = llvm.icmp "slt" %273, %275 : i32
    %277 = llvm.select %276, %273, %275 : i1, i32
    %278 = llvm.extractvalue %237[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %279 = llvm.mlir.constant(4 : index) : i64
    %280 = llvm.mul %241, %279  : i64
    %281 = llvm.mlir.constant(2 : index) : i64
    %282 = llvm.mul %246, %281  : i64
    %283 = llvm.add %280, %282  : i64
    %284 = llvm.mlir.constant(2 : index) : i64
    %285 = llvm.mul %251, %284  : i64
    %286 = llvm.add %283, %285  : i64
    %287 = llvm.add %286, %256  : i64
    %288 = llvm.getelementptr %278[%287] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %277, %288 : !llvm.ptr<i32>
    %289 = llvm.add %256, %255  : i64
    llvm.br ^bb28(%289 : i64)
  ^bb30:  // pred: ^bb28
    %290 = llvm.add %251, %250  : i64
    llvm.br ^bb26(%290 : i64)
  ^bb31:  // pred: ^bb26
    %291 = llvm.add %246, %245  : i64
    llvm.br ^bb24(%291 : i64)
  ^bb32:  // pred: ^bb24
    %292 = llvm.add %241, %240  : i64
    llvm.br ^bb22(%292 : i64)
  ^bb33:  // pred: ^bb22
    %293 = llvm.mlir.constant(2 : index) : i64
    %294 = llvm.mlir.constant(2 : index) : i64
    %295 = llvm.mlir.constant(1 : index) : i64
    %296 = llvm.mlir.constant(2 : index) : i64
    %297 = llvm.mlir.constant(1 : index) : i64
    %298 = llvm.mlir.constant(2 : index) : i64
    %299 = llvm.mlir.constant(4 : index) : i64
    %300 = llvm.mlir.constant(8 : index) : i64
    %301 = llvm.mlir.null : !llvm.ptr<i32>
    %302 = llvm.getelementptr %301[%300] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %303 = llvm.ptrtoint %302 : !llvm.ptr<i32> to i64
    %304 = llvm.mlir.constant(16 : index) : i64
    %305 = llvm.add %303, %304  : i64
    %306 = llvm.call @malloc(%305) : (i64) -> !llvm.ptr<i8>
    %307 = llvm.bitcast %306 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %308 = llvm.ptrtoint %307 : !llvm.ptr<i32> to i64
    %309 = llvm.mlir.constant(1 : index) : i64
    %310 = llvm.sub %304, %309  : i64
    %311 = llvm.add %308, %310  : i64
    %312 = llvm.urem %311, %304  : i64
    %313 = llvm.sub %311, %312  : i64
    %314 = llvm.inttoptr %313 : i64 to !llvm.ptr<i32>
    %315 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %316 = llvm.insertvalue %307, %315[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %317 = llvm.insertvalue %314, %316[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %318 = llvm.mlir.constant(0 : index) : i64
    %319 = llvm.insertvalue %318, %317[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %320 = llvm.insertvalue %293, %319[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %321 = llvm.insertvalue %294, %320[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %322 = llvm.insertvalue %295, %321[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %323 = llvm.insertvalue %296, %322[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %324 = llvm.insertvalue %299, %323[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %325 = llvm.insertvalue %298, %324[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %326 = llvm.insertvalue %296, %325[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %327 = llvm.insertvalue %297, %326[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %328 = llvm.mlir.constant(0 : index) : i64
    %329 = llvm.mlir.constant(2 : index) : i64
    %330 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb34(%328 : i64)
  ^bb34(%331: i64):  // 2 preds: ^bb33, ^bb44
    %332 = llvm.icmp "slt" %331, %329 : i64
    llvm.cond_br %332, ^bb35, ^bb45
  ^bb35:  // pred: ^bb34
    %333 = llvm.mlir.constant(0 : index) : i64
    %334 = llvm.mlir.constant(2 : index) : i64
    %335 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb36(%333 : i64)
  ^bb36(%336: i64):  // 2 preds: ^bb35, ^bb43
    %337 = llvm.icmp "slt" %336, %334 : i64
    llvm.cond_br %337, ^bb37, ^bb44
  ^bb37:  // pred: ^bb36
    %338 = llvm.mlir.constant(0 : index) : i64
    %339 = llvm.mlir.constant(1 : index) : i64
    %340 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb38(%338 : i64)
  ^bb38(%341: i64):  // 2 preds: ^bb37, ^bb42
    %342 = llvm.icmp "slt" %341, %339 : i64
    llvm.cond_br %342, ^bb39, ^bb43
  ^bb39:  // pred: ^bb38
    %343 = llvm.mlir.constant(0 : index) : i64
    %344 = llvm.mlir.constant(2 : index) : i64
    %345 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb40(%343 : i64)
  ^bb40(%346: i64):  // 2 preds: ^bb39, ^bb41
    %347 = llvm.icmp "slt" %346, %344 : i64
    llvm.cond_br %347, ^bb41, ^bb42
  ^bb41:  // pred: ^bb40
    %348 = llvm.extractvalue %237[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %349 = llvm.mlir.constant(4 : index) : i64
    %350 = llvm.mul %331, %349  : i64
    %351 = llvm.mlir.constant(2 : index) : i64
    %352 = llvm.mul %336, %351  : i64
    %353 = llvm.add %350, %352  : i64
    %354 = llvm.mlir.constant(2 : index) : i64
    %355 = llvm.mul %341, %354  : i64
    %356 = llvm.add %353, %355  : i64
    %357 = llvm.add %356, %346  : i64
    %358 = llvm.getelementptr %348[%357] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %359 = llvm.load %358 : !llvm.ptr<i32>
    %360 = llvm.extractvalue %152[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %361 = llvm.mlir.constant(4 : index) : i64
    %362 = llvm.mul %331, %361  : i64
    %363 = llvm.mlir.constant(2 : index) : i64
    %364 = llvm.mul %336, %363  : i64
    %365 = llvm.add %362, %364  : i64
    %366 = llvm.mlir.constant(2 : index) : i64
    %367 = llvm.mul %341, %366  : i64
    %368 = llvm.add %365, %367  : i64
    %369 = llvm.add %368, %346  : i64
    %370 = llvm.getelementptr %360[%369] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %371 = llvm.load %370 : !llvm.ptr<i32>
    %372 = llvm.mul %359, %371  : i32
    %373 = llvm.extractvalue %327[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %374 = llvm.mlir.constant(4 : index) : i64
    %375 = llvm.mul %331, %374  : i64
    %376 = llvm.mlir.constant(2 : index) : i64
    %377 = llvm.mul %336, %376  : i64
    %378 = llvm.add %375, %377  : i64
    %379 = llvm.mlir.constant(2 : index) : i64
    %380 = llvm.mul %341, %379  : i64
    %381 = llvm.add %378, %380  : i64
    %382 = llvm.add %381, %346  : i64
    %383 = llvm.getelementptr %373[%382] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %372, %383 : !llvm.ptr<i32>
    %384 = llvm.add %346, %345  : i64
    llvm.br ^bb40(%384 : i64)
  ^bb42:  // pred: ^bb40
    %385 = llvm.add %341, %340  : i64
    llvm.br ^bb38(%385 : i64)
  ^bb43:  // pred: ^bb38
    %386 = llvm.add %336, %335  : i64
    llvm.br ^bb36(%386 : i64)
  ^bb44:  // pred: ^bb36
    %387 = llvm.add %331, %330  : i64
    llvm.br ^bb34(%387 : i64)
  ^bb45:  // pred: ^bb34
    %388 = llvm.mlir.constant(2 : index) : i64
    %389 = llvm.mlir.constant(2 : index) : i64
    %390 = llvm.mlir.constant(1 : index) : i64
    %391 = llvm.mlir.constant(2 : index) : i64
    %392 = llvm.mlir.constant(1 : index) : i64
    %393 = llvm.mlir.constant(2 : index) : i64
    %394 = llvm.mlir.constant(4 : index) : i64
    %395 = llvm.mlir.constant(8 : index) : i64
    %396 = llvm.mlir.null : !llvm.ptr<i1>
    %397 = llvm.getelementptr %396[%395] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %398 = llvm.ptrtoint %397 : !llvm.ptr<i1> to i64
    %399 = llvm.mlir.constant(16 : index) : i64
    %400 = llvm.add %398, %399  : i64
    %401 = llvm.call @malloc(%400) : (i64) -> !llvm.ptr<i8>
    %402 = llvm.bitcast %401 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %403 = llvm.ptrtoint %402 : !llvm.ptr<i1> to i64
    %404 = llvm.mlir.constant(1 : index) : i64
    %405 = llvm.sub %399, %404  : i64
    %406 = llvm.add %403, %405  : i64
    %407 = llvm.urem %406, %399  : i64
    %408 = llvm.sub %406, %407  : i64
    %409 = llvm.inttoptr %408 : i64 to !llvm.ptr<i1>
    %410 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>
    %411 = llvm.insertvalue %402, %410[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %412 = llvm.insertvalue %409, %411[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %413 = llvm.mlir.constant(0 : index) : i64
    %414 = llvm.insertvalue %413, %412[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %415 = llvm.insertvalue %388, %414[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %416 = llvm.insertvalue %389, %415[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %417 = llvm.insertvalue %390, %416[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %418 = llvm.insertvalue %391, %417[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %419 = llvm.insertvalue %394, %418[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %420 = llvm.insertvalue %393, %419[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %421 = llvm.insertvalue %391, %420[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %422 = llvm.insertvalue %392, %421[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %423 = llvm.mlir.constant(0 : index) : i64
    %424 = llvm.mlir.constant(2 : index) : i64
    %425 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb46(%423 : i64)
  ^bb46(%426: i64):  // 2 preds: ^bb45, ^bb56
    %427 = llvm.icmp "slt" %426, %424 : i64
    llvm.cond_br %427, ^bb47, ^bb57
  ^bb47:  // pred: ^bb46
    %428 = llvm.mlir.constant(0 : index) : i64
    %429 = llvm.mlir.constant(2 : index) : i64
    %430 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb48(%428 : i64)
  ^bb48(%431: i64):  // 2 preds: ^bb47, ^bb55
    %432 = llvm.icmp "slt" %431, %429 : i64
    llvm.cond_br %432, ^bb49, ^bb56
  ^bb49:  // pred: ^bb48
    %433 = llvm.mlir.constant(0 : index) : i64
    %434 = llvm.mlir.constant(1 : index) : i64
    %435 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb50(%433 : i64)
  ^bb50(%436: i64):  // 2 preds: ^bb49, ^bb54
    %437 = llvm.icmp "slt" %436, %434 : i64
    llvm.cond_br %437, ^bb51, ^bb55
  ^bb51:  // pred: ^bb50
    %438 = llvm.mlir.constant(0 : index) : i64
    %439 = llvm.mlir.constant(2 : index) : i64
    %440 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb52(%438 : i64)
  ^bb52(%441: i64):  // 2 preds: ^bb51, ^bb53
    %442 = llvm.icmp "slt" %441, %439 : i64
    llvm.cond_br %442, ^bb53, ^bb54
  ^bb53:  // pred: ^bb52
    %443 = llvm.extractvalue %327[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %444 = llvm.mlir.constant(4 : index) : i64
    %445 = llvm.mul %426, %444  : i64
    %446 = llvm.mlir.constant(2 : index) : i64
    %447 = llvm.mul %431, %446  : i64
    %448 = llvm.add %445, %447  : i64
    %449 = llvm.mlir.constant(2 : index) : i64
    %450 = llvm.mul %436, %449  : i64
    %451 = llvm.add %448, %450  : i64
    %452 = llvm.add %451, %441  : i64
    %453 = llvm.getelementptr %443[%452] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %454 = llvm.load %453 : !llvm.ptr<i32>
    %455 = llvm.extractvalue %237[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %456 = llvm.mlir.constant(4 : index) : i64
    %457 = llvm.mul %426, %456  : i64
    %458 = llvm.mlir.constant(2 : index) : i64
    %459 = llvm.mul %431, %458  : i64
    %460 = llvm.add %457, %459  : i64
    %461 = llvm.mlir.constant(2 : index) : i64
    %462 = llvm.mul %436, %461  : i64
    %463 = llvm.add %460, %462  : i64
    %464 = llvm.add %463, %441  : i64
    %465 = llvm.getelementptr %455[%464] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %466 = llvm.load %465 : !llvm.ptr<i32>
    %467 = llvm.icmp "slt" %454, %466 : i32
    %468 = llvm.extractvalue %422[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %469 = llvm.mlir.constant(4 : index) : i64
    %470 = llvm.mul %426, %469  : i64
    %471 = llvm.mlir.constant(2 : index) : i64
    %472 = llvm.mul %431, %471  : i64
    %473 = llvm.add %470, %472  : i64
    %474 = llvm.mlir.constant(2 : index) : i64
    %475 = llvm.mul %436, %474  : i64
    %476 = llvm.add %473, %475  : i64
    %477 = llvm.add %476, %441  : i64
    %478 = llvm.getelementptr %468[%477] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %467, %478 : !llvm.ptr<i1>
    %479 = llvm.add %441, %440  : i64
    llvm.br ^bb52(%479 : i64)
  ^bb54:  // pred: ^bb52
    %480 = llvm.add %436, %435  : i64
    llvm.br ^bb50(%480 : i64)
  ^bb55:  // pred: ^bb50
    %481 = llvm.add %431, %430  : i64
    llvm.br ^bb48(%481 : i64)
  ^bb56:  // pred: ^bb48
    %482 = llvm.add %426, %425  : i64
    llvm.br ^bb46(%482 : i64)
  ^bb57:  // pred: ^bb46
    llvm.return %422 : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, %arg2: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64)>>) attributes {input_names = ["v1_0", "v4_0"], llvm.emit_c_interface, output_names = ["v3_0"]} {
    %0 = llvm.load %arg1 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %1 = llvm.extractvalue %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %2 = llvm.extractvalue %0[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %3 = llvm.extractvalue %0[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %4 = llvm.extractvalue %0[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %5 = llvm.extractvalue %0[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %6 = llvm.extractvalue %0[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %7 = llvm.extractvalue %0[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %8 = llvm.extractvalue %0[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %9 = llvm.extractvalue %0[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %10 = llvm.extractvalue %0[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %11 = llvm.extractvalue %0[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %12 = llvm.load %arg2 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64)>>
    %13 = llvm.extractvalue %12[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %14 = llvm.extractvalue %12[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %15 = llvm.extractvalue %12[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %16 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11, %13, %14, %15) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64) -> !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>
    llvm.store %16, %arg0 : !llvm.ptr<struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>>
    %3 = llvm.mlir.constant(0 : i64) : i64
    %4 = llvm.getelementptr %0[%3] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %5 = llvm.load %4 : !llvm.ptr<ptr<i8>>
    %6 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %7 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %8 = llvm.call @omTensorGetDataPtr(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %9 = llvm.bitcast %8 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %10 = llvm.insertvalue %9, %7[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %11 = llvm.insertvalue %9, %10[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %12 = llvm.mlir.constant(0 : i64) : i64
    %13 = llvm.insertvalue %12, %11[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %14 = llvm.call @omTensorGetShape(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %15 = llvm.call @omTensorGetStrides(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %16 = llvm.mlir.constant(0 : i64) : i64
    %17 = llvm.getelementptr %14[%16] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %18 = llvm.load %17 : !llvm.ptr<i64>
    %19 = llvm.insertvalue %18, %13[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %20 = llvm.getelementptr %15[%16] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %21 = llvm.load %20 : !llvm.ptr<i64>
    %22 = llvm.insertvalue %21, %19[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %23 = llvm.mlir.constant(1 : i64) : i64
    %24 = llvm.getelementptr %14[%23] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %25 = llvm.load %24 : !llvm.ptr<i64>
    %26 = llvm.insertvalue %25, %22[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %27 = llvm.getelementptr %15[%23] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %28 = llvm.load %27 : !llvm.ptr<i64>
    %29 = llvm.insertvalue %28, %26[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %30 = llvm.mlir.constant(2 : i64) : i64
    %31 = llvm.getelementptr %14[%30] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %32 = llvm.load %31 : !llvm.ptr<i64>
    %33 = llvm.insertvalue %32, %29[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %34 = llvm.getelementptr %15[%30] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %35 = llvm.load %34 : !llvm.ptr<i64>
    %36 = llvm.insertvalue %35, %33[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %37 = llvm.mlir.constant(3 : i64) : i64
    %38 = llvm.getelementptr %14[%37] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %39 = llvm.load %38 : !llvm.ptr<i64>
    %40 = llvm.insertvalue %39, %36[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %41 = llvm.getelementptr %15[%37] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %42 = llvm.load %41 : !llvm.ptr<i64>
    %43 = llvm.insertvalue %42, %40[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    llvm.store %43, %6 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %44 = llvm.mlir.constant(1 : i64) : i64
    %45 = llvm.getelementptr %0[%44] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %46 = llvm.load %45 : !llvm.ptr<ptr<i8>>
    %47 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64)>>
    %48 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64)>
    %49 = llvm.call @omTensorGetDataPtr(%46) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %50 = llvm.bitcast %49 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %51 = llvm.insertvalue %50, %48[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %52 = llvm.insertvalue %50, %51[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %53 = llvm.mlir.constant(0 : i64) : i64
    %54 = llvm.insertvalue %53, %52[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %55 = llvm.call @omTensorGetShape(%46) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %56 = llvm.call @omTensorGetStrides(%46) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    llvm.store %54, %47 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64)>>
    llvm.call @_mlir_ciface_main_graph(%2, %6, %47) : (!llvm.ptr<struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64)>>) -> ()
    %57 = llvm.load %2 : !llvm.ptr<struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>>
    %58 = llvm.mlir.constant(1 : i64) : i64
    %59 = llvm.mlir.constant(8 : i64) : i64
    %60 = llvm.call @malloc(%59) : (i64) -> !llvm.ptr<i8>
    %61 = llvm.bitcast %60 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %62 = llvm.mlir.constant(4 : i64) : i64
    %63 = llvm.call @omTensorCreateUntyped(%62) : (i64) -> !llvm.ptr<i8>
    %64 = llvm.mlir.constant(1 : i64) : i64
    %65 = llvm.extractvalue %57[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %66 = llvm.bitcast %65 : !llvm.ptr<i1> to !llvm.ptr<i8>
    %67 = llvm.extractvalue %57[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %68 = llvm.bitcast %67 : !llvm.ptr<i1> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%63, %64, %66, %68) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %69 = llvm.mlir.constant(9 : i64) : i64
    llvm.call @omTensorSetDataType(%63, %69) : (!llvm.ptr<i8>, i64) -> ()
    %70 = llvm.call @omTensorGetShape(%63) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %71 = llvm.call @omTensorGetStrides(%63) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %72 = llvm.mlir.constant(0 : i64) : i64
    %73 = llvm.extractvalue %57[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %74 = llvm.getelementptr %70[%72] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %73, %74 : !llvm.ptr<i64>
    %75 = llvm.extractvalue %57[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %76 = llvm.getelementptr %71[%72] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %75, %76 : !llvm.ptr<i64>
    %77 = llvm.mlir.constant(1 : i64) : i64
    %78 = llvm.extractvalue %57[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %79 = llvm.getelementptr %70[%77] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %78, %79 : !llvm.ptr<i64>
    %80 = llvm.extractvalue %57[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %81 = llvm.getelementptr %71[%77] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %80, %81 : !llvm.ptr<i64>
    %82 = llvm.mlir.constant(2 : i64) : i64
    %83 = llvm.extractvalue %57[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %84 = llvm.getelementptr %70[%82] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %83, %84 : !llvm.ptr<i64>
    %85 = llvm.extractvalue %57[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %86 = llvm.getelementptr %71[%82] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %85, %86 : !llvm.ptr<i64>
    %87 = llvm.mlir.constant(3 : i64) : i64
    %88 = llvm.extractvalue %57[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %89 = llvm.getelementptr %70[%87] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %88, %89 : !llvm.ptr<i64>
    %90 = llvm.extractvalue %57[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %91 = llvm.getelementptr %71[%87] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %90, %91 : !llvm.ptr<i64>
    %92 = llvm.mlir.constant(0 : i64) : i64
    %93 = llvm.getelementptr %61[%92] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %63, %93 : !llvm.ptr<ptr<i8>>
    %94 = llvm.call @omTensorListCreate(%61, %58, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %94 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_in_sig : !llvm.ptr<array<129 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<129 x i8>> to !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<70 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<70 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

