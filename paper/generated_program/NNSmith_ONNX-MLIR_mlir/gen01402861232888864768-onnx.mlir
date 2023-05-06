module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 2] , \22name\22 : \22v0_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 2] , \22name\22 : \22v5_0\22 }\0A ,    { \22type\22 : \22i64\22 , \22dims\22 : [1 , 1 , 2] , \22name\22 : \22v3_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_1(dense<1> : tensor<i32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i32>
  llvm.mlir.global internal constant @constant_0(dense<-1> : tensor<i32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i32>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)> attributes {input_names = ["v0_0"], llvm.emit_c_interface, output_names = ["v5_0", "v3_0"]} {
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
    %12 = llvm.mlir.constant(0 : i64) : i64
    %13 = llvm.mlir.addressof @constant_0 : !llvm.ptr<array<1 x i32>>
    %14 = llvm.bitcast %13 : !llvm.ptr<array<1 x i32>> to !llvm.ptr<i32>
    %15 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64)>
    %16 = llvm.insertvalue %14, %15[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %17 = llvm.insertvalue %14, %16[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %18 = llvm.mlir.constant(0 : index) : i64
    %19 = llvm.insertvalue %18, %17[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %20 = llvm.mlir.addressof @constant_1 : !llvm.ptr<array<1 x i32>>
    %21 = llvm.bitcast %20 : !llvm.ptr<array<1 x i32>> to !llvm.ptr<i32>
    %22 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64)>
    %23 = llvm.insertvalue %21, %22[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %24 = llvm.insertvalue %21, %23[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %25 = llvm.mlir.constant(0 : index) : i64
    %26 = llvm.insertvalue %25, %24[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %27 = llvm.mlir.constant(1 : index) : i64
    %28 = llvm.mlir.constant(1 : index) : i64
    %29 = llvm.mlir.constant(1 : index) : i64
    %30 = llvm.mlir.constant(2 : index) : i64
    %31 = llvm.mlir.constant(1 : index) : i64
    %32 = llvm.mlir.constant(2 : index) : i64
    %33 = llvm.mlir.constant(2 : index) : i64
    %34 = llvm.mlir.constant(2 : index) : i64
    %35 = llvm.mlir.null : !llvm.ptr<i32>
    %36 = llvm.getelementptr %35[%34] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %37 = llvm.ptrtoint %36 : !llvm.ptr<i32> to i64
    %38 = llvm.mlir.constant(16 : index) : i64
    %39 = llvm.add %37, %38  : i64
    %40 = llvm.call @malloc(%39) : (i64) -> !llvm.ptr<i8>
    %41 = llvm.bitcast %40 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %42 = llvm.ptrtoint %41 : !llvm.ptr<i32> to i64
    %43 = llvm.mlir.constant(1 : index) : i64
    %44 = llvm.sub %38, %43  : i64
    %45 = llvm.add %42, %44  : i64
    %46 = llvm.urem %45, %38  : i64
    %47 = llvm.sub %45, %46  : i64
    %48 = llvm.inttoptr %47 : i64 to !llvm.ptr<i32>
    %49 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %50 = llvm.insertvalue %41, %49[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %51 = llvm.insertvalue %48, %50[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %52 = llvm.mlir.constant(0 : index) : i64
    %53 = llvm.insertvalue %52, %51[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %54 = llvm.insertvalue %27, %53[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %55 = llvm.insertvalue %28, %54[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %56 = llvm.insertvalue %29, %55[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %57 = llvm.insertvalue %30, %56[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %58 = llvm.insertvalue %33, %57[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %59 = llvm.insertvalue %32, %58[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %60 = llvm.insertvalue %30, %59[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %61 = llvm.insertvalue %31, %60[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %62 = llvm.mlir.constant(0 : index) : i64
    %63 = llvm.mlir.constant(1 : index) : i64
    %64 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%62 : i64)
  ^bb1(%65: i64):  // 2 preds: ^bb0, ^bb11
    %66 = llvm.icmp "slt" %65, %63 : i64
    llvm.cond_br %66, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    %67 = llvm.mlir.constant(0 : index) : i64
    %68 = llvm.mlir.constant(1 : index) : i64
    %69 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%67 : i64)
  ^bb3(%70: i64):  // 2 preds: ^bb2, ^bb10
    %71 = llvm.icmp "slt" %70, %68 : i64
    llvm.cond_br %71, ^bb4, ^bb11
  ^bb4:  // pred: ^bb3
    %72 = llvm.mlir.constant(0 : index) : i64
    %73 = llvm.mlir.constant(1 : index) : i64
    %74 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%72 : i64)
  ^bb5(%75: i64):  // 2 preds: ^bb4, ^bb9
    %76 = llvm.icmp "slt" %75, %73 : i64
    llvm.cond_br %76, ^bb6, ^bb10
  ^bb6:  // pred: ^bb5
    %77 = llvm.mlir.constant(0 : index) : i64
    %78 = llvm.mlir.constant(2 : index) : i64
    %79 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%77 : i64)
  ^bb7(%80: i64):  // 2 preds: ^bb6, ^bb8
    %81 = llvm.icmp "slt" %80, %78 : i64
    llvm.cond_br %81, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %82 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %83 = llvm.mlir.constant(2 : index) : i64
    %84 = llvm.mul %65, %83  : i64
    %85 = llvm.mlir.constant(2 : index) : i64
    %86 = llvm.mul %70, %85  : i64
    %87 = llvm.add %84, %86  : i64
    %88 = llvm.mlir.constant(2 : index) : i64
    %89 = llvm.mul %75, %88  : i64
    %90 = llvm.add %87, %89  : i64
    %91 = llvm.add %90, %80  : i64
    %92 = llvm.getelementptr %82[%91] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %93 = llvm.load %92 : !llvm.ptr<i32>
    %94 = llvm.extractvalue %19[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %95 = llvm.load %94 : !llvm.ptr<i32>
    %96 = llvm.icmp "slt" %93, %95 : i32
    %97 = llvm.select %96, %95, %93 : i1, i32
    %98 = llvm.extractvalue %26[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %99 = llvm.load %98 : !llvm.ptr<i32>
    %100 = llvm.icmp "slt" %97, %99 : i32
    %101 = llvm.select %100, %97, %99 : i1, i32
    %102 = llvm.extractvalue %61[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %103 = llvm.mlir.constant(2 : index) : i64
    %104 = llvm.mul %65, %103  : i64
    %105 = llvm.mlir.constant(2 : index) : i64
    %106 = llvm.mul %70, %105  : i64
    %107 = llvm.add %104, %106  : i64
    %108 = llvm.mlir.constant(2 : index) : i64
    %109 = llvm.mul %75, %108  : i64
    %110 = llvm.add %107, %109  : i64
    %111 = llvm.add %110, %80  : i64
    %112 = llvm.getelementptr %102[%111] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %101, %112 : !llvm.ptr<i32>
    %113 = llvm.add %80, %79  : i64
    llvm.br ^bb7(%113 : i64)
  ^bb9:  // pred: ^bb7
    %114 = llvm.add %75, %74  : i64
    llvm.br ^bb5(%114 : i64)
  ^bb10:  // pred: ^bb5
    %115 = llvm.add %70, %69  : i64
    llvm.br ^bb3(%115 : i64)
  ^bb11:  // pred: ^bb3
    %116 = llvm.add %65, %64  : i64
    llvm.br ^bb1(%116 : i64)
  ^bb12:  // pred: ^bb1
    %117 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %118 = llvm.extractvalue %61[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %119 = llvm.extractvalue %61[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %120 = llvm.insertvalue %118, %117[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %121 = llvm.insertvalue %119, %120[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %122 = llvm.mlir.constant(0 : index) : i64
    %123 = llvm.insertvalue %122, %121[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %124 = llvm.mlir.constant(2 : index) : i64
    %125 = llvm.insertvalue %124, %123[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %126 = llvm.mlir.constant(1 : index) : i64
    %127 = llvm.insertvalue %126, %125[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %128 = llvm.mlir.constant(1 : index) : i64
    %129 = llvm.mlir.constant(1 : index) : i64
    %130 = llvm.mlir.constant(1 : index) : i64
    %131 = llvm.mlir.constant(2 : index) : i64
    %132 = llvm.mlir.constant(1 : index) : i64
    %133 = llvm.mlir.constant(2 : index) : i64
    %134 = llvm.mlir.constant(2 : index) : i64
    %135 = llvm.mlir.constant(2 : index) : i64
    %136 = llvm.mlir.null : !llvm.ptr<i32>
    %137 = llvm.getelementptr %136[%135] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %138 = llvm.ptrtoint %137 : !llvm.ptr<i32> to i64
    %139 = llvm.mlir.constant(16 : index) : i64
    %140 = llvm.add %138, %139  : i64
    %141 = llvm.call @malloc(%140) : (i64) -> !llvm.ptr<i8>
    %142 = llvm.bitcast %141 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %143 = llvm.ptrtoint %142 : !llvm.ptr<i32> to i64
    %144 = llvm.mlir.constant(1 : index) : i64
    %145 = llvm.sub %139, %144  : i64
    %146 = llvm.add %143, %145  : i64
    %147 = llvm.urem %146, %139  : i64
    %148 = llvm.sub %146, %147  : i64
    %149 = llvm.inttoptr %148 : i64 to !llvm.ptr<i32>
    %150 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %151 = llvm.insertvalue %142, %150[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %152 = llvm.insertvalue %149, %151[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %153 = llvm.mlir.constant(0 : index) : i64
    %154 = llvm.insertvalue %153, %152[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %155 = llvm.insertvalue %128, %154[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %156 = llvm.insertvalue %129, %155[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %157 = llvm.insertvalue %130, %156[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %158 = llvm.insertvalue %131, %157[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %159 = llvm.insertvalue %134, %158[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %160 = llvm.insertvalue %133, %159[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %161 = llvm.insertvalue %131, %160[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %162 = llvm.insertvalue %132, %161[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %163 = llvm.mlir.constant(0 : index) : i64
    %164 = llvm.mlir.constant(1 : index) : i64
    %165 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%163 : i64)
  ^bb13(%166: i64):  // 2 preds: ^bb12, ^bb23
    %167 = llvm.icmp "slt" %166, %164 : i64
    llvm.cond_br %167, ^bb14, ^bb24
  ^bb14:  // pred: ^bb13
    %168 = llvm.mlir.constant(0 : index) : i64
    %169 = llvm.mlir.constant(1 : index) : i64
    %170 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb15(%168 : i64)
  ^bb15(%171: i64):  // 2 preds: ^bb14, ^bb22
    %172 = llvm.icmp "slt" %171, %169 : i64
    llvm.cond_br %172, ^bb16, ^bb23
  ^bb16:  // pred: ^bb15
    %173 = llvm.mlir.constant(0 : index) : i64
    %174 = llvm.mlir.constant(1 : index) : i64
    %175 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb17(%173 : i64)
  ^bb17(%176: i64):  // 2 preds: ^bb16, ^bb21
    %177 = llvm.icmp "slt" %176, %174 : i64
    llvm.cond_br %177, ^bb18, ^bb22
  ^bb18:  // pred: ^bb17
    %178 = llvm.mlir.constant(0 : index) : i64
    %179 = llvm.mlir.constant(2 : index) : i64
    %180 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%178 : i64)
  ^bb19(%181: i64):  // 2 preds: ^bb18, ^bb20
    %182 = llvm.icmp "slt" %181, %179 : i64
    llvm.cond_br %182, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %183 = llvm.extractvalue %61[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %184 = llvm.mlir.constant(2 : index) : i64
    %185 = llvm.mul %166, %184  : i64
    %186 = llvm.mlir.constant(2 : index) : i64
    %187 = llvm.mul %171, %186  : i64
    %188 = llvm.add %185, %187  : i64
    %189 = llvm.mlir.constant(2 : index) : i64
    %190 = llvm.mul %176, %189  : i64
    %191 = llvm.add %188, %190  : i64
    %192 = llvm.add %191, %181  : i64
    %193 = llvm.getelementptr %183[%192] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %194 = llvm.load %193 : !llvm.ptr<i32>
    %195 = llvm.extractvalue %127[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %196 = llvm.getelementptr %195[%181] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %197 = llvm.load %196 : !llvm.ptr<i32>
    %198 = llvm.icmp "sgt" %194, %197 : i32
    %199 = llvm.select %198, %194, %197 : i1, i32
    %200 = llvm.extractvalue %162[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %201 = llvm.mlir.constant(2 : index) : i64
    %202 = llvm.mul %166, %201  : i64
    %203 = llvm.mlir.constant(2 : index) : i64
    %204 = llvm.mul %171, %203  : i64
    %205 = llvm.add %202, %204  : i64
    %206 = llvm.mlir.constant(2 : index) : i64
    %207 = llvm.mul %176, %206  : i64
    %208 = llvm.add %205, %207  : i64
    %209 = llvm.add %208, %181  : i64
    %210 = llvm.getelementptr %200[%209] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %199, %210 : !llvm.ptr<i32>
    %211 = llvm.add %181, %180  : i64
    llvm.br ^bb19(%211 : i64)
  ^bb21:  // pred: ^bb19
    %212 = llvm.add %176, %175  : i64
    llvm.br ^bb17(%212 : i64)
  ^bb22:  // pred: ^bb17
    %213 = llvm.add %171, %170  : i64
    llvm.br ^bb15(%213 : i64)
  ^bb23:  // pred: ^bb15
    %214 = llvm.add %166, %165  : i64
    llvm.br ^bb13(%214 : i64)
  ^bb24:  // pred: ^bb13
    %215 = llvm.mlir.constant(1 : index) : i64
    %216 = llvm.mlir.constant(1 : index) : i64
    %217 = llvm.mlir.constant(1 : index) : i64
    %218 = llvm.mlir.constant(2 : index) : i64
    %219 = llvm.mlir.constant(1 : index) : i64
    %220 = llvm.mlir.constant(2 : index) : i64
    %221 = llvm.mlir.constant(2 : index) : i64
    %222 = llvm.mlir.constant(2 : index) : i64
    %223 = llvm.mlir.null : !llvm.ptr<i64>
    %224 = llvm.getelementptr %223[%222] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %225 = llvm.ptrtoint %224 : !llvm.ptr<i64> to i64
    %226 = llvm.mlir.constant(16 : index) : i64
    %227 = llvm.add %225, %226  : i64
    %228 = llvm.call @malloc(%227) : (i64) -> !llvm.ptr<i8>
    %229 = llvm.bitcast %228 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %230 = llvm.ptrtoint %229 : !llvm.ptr<i64> to i64
    %231 = llvm.mlir.constant(1 : index) : i64
    %232 = llvm.sub %226, %231  : i64
    %233 = llvm.add %230, %232  : i64
    %234 = llvm.urem %233, %226  : i64
    %235 = llvm.sub %233, %234  : i64
    %236 = llvm.inttoptr %235 : i64 to !llvm.ptr<i64>
    %237 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>
    %238 = llvm.insertvalue %229, %237[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %239 = llvm.insertvalue %236, %238[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %240 = llvm.mlir.constant(0 : index) : i64
    %241 = llvm.insertvalue %240, %239[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %242 = llvm.insertvalue %215, %241[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %243 = llvm.insertvalue %216, %242[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %244 = llvm.insertvalue %217, %243[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %245 = llvm.insertvalue %218, %244[3, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %246 = llvm.insertvalue %221, %245[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %247 = llvm.insertvalue %220, %246[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %248 = llvm.insertvalue %218, %247[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %249 = llvm.insertvalue %219, %248[4, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %250 = llvm.mlir.constant(0 : index) : i64
    %251 = llvm.mlir.constant(1 : index) : i64
    %252 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb25(%250 : i64)
  ^bb25(%253: i64):  // 2 preds: ^bb24, ^bb35
    %254 = llvm.icmp "slt" %253, %251 : i64
    llvm.cond_br %254, ^bb26, ^bb36
  ^bb26:  // pred: ^bb25
    %255 = llvm.mlir.constant(0 : index) : i64
    %256 = llvm.mlir.constant(1 : index) : i64
    %257 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb27(%255 : i64)
  ^bb27(%258: i64):  // 2 preds: ^bb26, ^bb34
    %259 = llvm.icmp "slt" %258, %256 : i64
    llvm.cond_br %259, ^bb28, ^bb35
  ^bb28:  // pred: ^bb27
    %260 = llvm.mlir.constant(0 : index) : i64
    %261 = llvm.mlir.constant(1 : index) : i64
    %262 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb29(%260 : i64)
  ^bb29(%263: i64):  // 2 preds: ^bb28, ^bb33
    %264 = llvm.icmp "slt" %263, %261 : i64
    llvm.cond_br %264, ^bb30, ^bb34
  ^bb30:  // pred: ^bb29
    %265 = llvm.mlir.constant(0 : index) : i64
    %266 = llvm.mlir.constant(2 : index) : i64
    %267 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb31(%265 : i64)
  ^bb31(%268: i64):  // 2 preds: ^bb30, ^bb32
    %269 = llvm.icmp "slt" %268, %266 : i64
    llvm.cond_br %269, ^bb32, ^bb33
  ^bb32:  // pred: ^bb31
    %270 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %271 = llvm.mlir.constant(2 : index) : i64
    %272 = llvm.mul %253, %271  : i64
    %273 = llvm.mlir.constant(2 : index) : i64
    %274 = llvm.mul %258, %273  : i64
    %275 = llvm.add %272, %274  : i64
    %276 = llvm.mlir.constant(2 : index) : i64
    %277 = llvm.mul %263, %276  : i64
    %278 = llvm.add %275, %277  : i64
    %279 = llvm.add %278, %268  : i64
    %280 = llvm.getelementptr %270[%279] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %281 = llvm.load %280 : !llvm.ptr<i32>
    %282 = llvm.sext %281 : i32 to i64
    %283 = llvm.extractvalue %249[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %284 = llvm.mlir.constant(2 : index) : i64
    %285 = llvm.mul %253, %284  : i64
    %286 = llvm.mlir.constant(2 : index) : i64
    %287 = llvm.mul %258, %286  : i64
    %288 = llvm.add %285, %287  : i64
    %289 = llvm.mlir.constant(2 : index) : i64
    %290 = llvm.mul %263, %289  : i64
    %291 = llvm.add %288, %290  : i64
    %292 = llvm.add %291, %268  : i64
    %293 = llvm.getelementptr %283[%292] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %282, %293 : !llvm.ptr<i64>
    %294 = llvm.add %268, %267  : i64
    llvm.br ^bb31(%294 : i64)
  ^bb33:  // pred: ^bb31
    %295 = llvm.add %263, %262  : i64
    llvm.br ^bb29(%295 : i64)
  ^bb34:  // pred: ^bb29
    %296 = llvm.add %258, %257  : i64
    llvm.br ^bb27(%296 : i64)
  ^bb35:  // pred: ^bb27
    %297 = llvm.add %253, %252  : i64
    llvm.br ^bb25(%297 : i64)
  ^bb36:  // pred: ^bb25
    %298 = llvm.mlir.constant(1 : index) : i64
    %299 = llvm.mlir.constant(1 : index) : i64
    %300 = llvm.mlir.constant(2 : index) : i64
    %301 = llvm.mlir.constant(1 : index) : i64
    %302 = llvm.mlir.constant(2 : index) : i64
    %303 = llvm.mlir.constant(2 : index) : i64
    %304 = llvm.mlir.null : !llvm.ptr<i64>
    %305 = llvm.getelementptr %304[%303] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %306 = llvm.ptrtoint %305 : !llvm.ptr<i64> to i64
    %307 = llvm.mlir.constant(16 : index) : i64
    %308 = llvm.add %306, %307  : i64
    %309 = llvm.call @malloc(%308) : (i64) -> !llvm.ptr<i8>
    %310 = llvm.bitcast %309 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %311 = llvm.ptrtoint %310 : !llvm.ptr<i64> to i64
    %312 = llvm.mlir.constant(1 : index) : i64
    %313 = llvm.sub %307, %312  : i64
    %314 = llvm.add %311, %313  : i64
    %315 = llvm.urem %314, %307  : i64
    %316 = llvm.sub %314, %315  : i64
    %317 = llvm.inttoptr %316 : i64 to !llvm.ptr<i64>
    %318 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>
    %319 = llvm.insertvalue %310, %318[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %320 = llvm.insertvalue %317, %319[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %321 = llvm.mlir.constant(0 : index) : i64
    %322 = llvm.insertvalue %321, %320[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %323 = llvm.insertvalue %298, %322[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %324 = llvm.insertvalue %299, %323[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %325 = llvm.insertvalue %300, %324[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %326 = llvm.insertvalue %302, %325[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %327 = llvm.insertvalue %300, %326[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %328 = llvm.insertvalue %301, %327[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %329 = llvm.mlir.constant(0 : index) : i64
    %330 = llvm.mlir.constant(1 : index) : i64
    %331 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb37(%329 : i64)
  ^bb37(%332: i64):  // 2 preds: ^bb36, ^bb44
    %333 = llvm.icmp "slt" %332, %330 : i64
    llvm.cond_br %333, ^bb38, ^bb45
  ^bb38:  // pred: ^bb37
    %334 = llvm.mlir.constant(0 : index) : i64
    %335 = llvm.mlir.constant(1 : index) : i64
    %336 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb39(%334 : i64)
  ^bb39(%337: i64):  // 2 preds: ^bb38, ^bb43
    %338 = llvm.icmp "slt" %337, %335 : i64
    llvm.cond_br %338, ^bb40, ^bb44
  ^bb40:  // pred: ^bb39
    %339 = llvm.mlir.constant(0 : index) : i64
    %340 = llvm.mlir.constant(2 : index) : i64
    %341 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb41(%339 : i64)
  ^bb41(%342: i64):  // 2 preds: ^bb40, ^bb42
    %343 = llvm.icmp "slt" %342, %340 : i64
    llvm.cond_br %343, ^bb42, ^bb43
  ^bb42:  // pred: ^bb41
    %344 = llvm.extractvalue %328[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %345 = llvm.mlir.constant(2 : index) : i64
    %346 = llvm.mul %332, %345  : i64
    %347 = llvm.mlir.constant(2 : index) : i64
    %348 = llvm.mul %337, %347  : i64
    %349 = llvm.add %346, %348  : i64
    %350 = llvm.add %349, %342  : i64
    %351 = llvm.getelementptr %344[%350] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %12, %351 : !llvm.ptr<i64>
    %352 = llvm.add %342, %341  : i64
    llvm.br ^bb41(%352 : i64)
  ^bb43:  // pred: ^bb41
    %353 = llvm.add %337, %336  : i64
    llvm.br ^bb39(%353 : i64)
  ^bb44:  // pred: ^bb39
    %354 = llvm.add %332, %331  : i64
    llvm.br ^bb37(%354 : i64)
  ^bb45:  // pred: ^bb37
    %355 = llvm.mlir.constant(0 : index) : i64
    %356 = llvm.mlir.constant(1 : index) : i64
    %357 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb46(%355 : i64)
  ^bb46(%358: i64):  // 2 preds: ^bb45, ^bb56
    %359 = llvm.icmp "slt" %358, %356 : i64
    llvm.cond_br %359, ^bb47, ^bb57
  ^bb47:  // pred: ^bb46
    %360 = llvm.mlir.constant(0 : index) : i64
    %361 = llvm.mlir.constant(1 : index) : i64
    %362 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb48(%360 : i64)
  ^bb48(%363: i64):  // 2 preds: ^bb47, ^bb55
    %364 = llvm.icmp "slt" %363, %361 : i64
    llvm.cond_br %364, ^bb49, ^bb56
  ^bb49:  // pred: ^bb48
    %365 = llvm.mlir.constant(0 : index) : i64
    %366 = llvm.mlir.constant(1 : index) : i64
    %367 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb50(%365 : i64)
  ^bb50(%368: i64):  // 2 preds: ^bb49, ^bb54
    %369 = llvm.icmp "slt" %368, %366 : i64
    llvm.cond_br %369, ^bb51, ^bb55
  ^bb51:  // pred: ^bb50
    %370 = llvm.mlir.constant(0 : index) : i64
    %371 = llvm.mlir.constant(2 : index) : i64
    %372 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb52(%370 : i64)
  ^bb52(%373: i64):  // 2 preds: ^bb51, ^bb53
    %374 = llvm.icmp "slt" %373, %371 : i64
    llvm.cond_br %374, ^bb53, ^bb54
  ^bb53:  // pred: ^bb52
    %375 = llvm.extractvalue %249[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %376 = llvm.mlir.constant(2 : index) : i64
    %377 = llvm.mul %358, %376  : i64
    %378 = llvm.mlir.constant(2 : index) : i64
    %379 = llvm.mul %363, %378  : i64
    %380 = llvm.add %377, %379  : i64
    %381 = llvm.mlir.constant(2 : index) : i64
    %382 = llvm.mul %368, %381  : i64
    %383 = llvm.add %380, %382  : i64
    %384 = llvm.add %383, %373  : i64
    %385 = llvm.getelementptr %375[%384] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %386 = llvm.load %385 : !llvm.ptr<i64>
    %387 = llvm.extractvalue %328[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %388 = llvm.mlir.constant(2 : index) : i64
    %389 = llvm.mul %363, %388  : i64
    %390 = llvm.mlir.constant(2 : index) : i64
    %391 = llvm.mul %368, %390  : i64
    %392 = llvm.add %389, %391  : i64
    %393 = llvm.add %392, %373  : i64
    %394 = llvm.getelementptr %387[%393] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %395 = llvm.load %394 : !llvm.ptr<i64>
    %396 = llvm.add %395, %386  : i64
    %397 = llvm.extractvalue %328[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %398 = llvm.mlir.constant(2 : index) : i64
    %399 = llvm.mul %363, %398  : i64
    %400 = llvm.mlir.constant(2 : index) : i64
    %401 = llvm.mul %368, %400  : i64
    %402 = llvm.add %399, %401  : i64
    %403 = llvm.add %402, %373  : i64
    %404 = llvm.getelementptr %397[%403] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %396, %404 : !llvm.ptr<i64>
    %405 = llvm.add %373, %372  : i64
    llvm.br ^bb52(%405 : i64)
  ^bb54:  // pred: ^bb52
    %406 = llvm.add %368, %367  : i64
    llvm.br ^bb50(%406 : i64)
  ^bb55:  // pred: ^bb50
    %407 = llvm.add %363, %362  : i64
    llvm.br ^bb48(%407 : i64)
  ^bb56:  // pred: ^bb48
    %408 = llvm.add %358, %357  : i64
    llvm.br ^bb46(%408 : i64)
  ^bb57:  // pred: ^bb46
    %409 = llvm.mlir.constant(1 : index) : i64
    %410 = llvm.mlir.constant(1 : index) : i64
    %411 = llvm.mlir.constant(2 : index) : i64
    %412 = llvm.mlir.constant(1 : index) : i64
    %413 = llvm.mlir.constant(2 : index) : i64
    %414 = llvm.mlir.constant(2 : index) : i64
    %415 = llvm.mlir.null : !llvm.ptr<i64>
    %416 = llvm.getelementptr %415[%414] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %417 = llvm.ptrtoint %416 : !llvm.ptr<i64> to i64
    %418 = llvm.mlir.constant(16 : index) : i64
    %419 = llvm.add %417, %418  : i64
    %420 = llvm.call @malloc(%419) : (i64) -> !llvm.ptr<i8>
    %421 = llvm.bitcast %420 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %422 = llvm.ptrtoint %421 : !llvm.ptr<i64> to i64
    %423 = llvm.mlir.constant(1 : index) : i64
    %424 = llvm.sub %418, %423  : i64
    %425 = llvm.add %422, %424  : i64
    %426 = llvm.urem %425, %418  : i64
    %427 = llvm.sub %425, %426  : i64
    %428 = llvm.inttoptr %427 : i64 to !llvm.ptr<i64>
    %429 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>
    %430 = llvm.insertvalue %421, %429[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %431 = llvm.insertvalue %428, %430[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %432 = llvm.mlir.constant(0 : index) : i64
    %433 = llvm.insertvalue %432, %431[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %434 = llvm.insertvalue %409, %433[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %435 = llvm.insertvalue %410, %434[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %436 = llvm.insertvalue %411, %435[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %437 = llvm.insertvalue %413, %436[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %438 = llvm.insertvalue %411, %437[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %439 = llvm.insertvalue %412, %438[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %440 = llvm.mlir.constant(0 : index) : i64
    %441 = llvm.mlir.constant(1 : index) : i64
    %442 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb58(%440 : i64)
  ^bb58(%443: i64):  // 2 preds: ^bb57, ^bb65
    %444 = llvm.icmp "slt" %443, %441 : i64
    llvm.cond_br %444, ^bb59, ^bb66
  ^bb59:  // pred: ^bb58
    %445 = llvm.mlir.constant(0 : index) : i64
    %446 = llvm.mlir.constant(1 : index) : i64
    %447 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb60(%445 : i64)
  ^bb60(%448: i64):  // 2 preds: ^bb59, ^bb64
    %449 = llvm.icmp "slt" %448, %446 : i64
    llvm.cond_br %449, ^bb61, ^bb65
  ^bb61:  // pred: ^bb60
    %450 = llvm.mlir.constant(0 : index) : i64
    %451 = llvm.mlir.constant(2 : index) : i64
    %452 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb62(%450 : i64)
  ^bb62(%453: i64):  // 2 preds: ^bb61, ^bb63
    %454 = llvm.icmp "slt" %453, %451 : i64
    llvm.cond_br %454, ^bb63, ^bb64
  ^bb63:  // pred: ^bb62
    %455 = llvm.extractvalue %328[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %456 = llvm.mlir.constant(2 : index) : i64
    %457 = llvm.mul %443, %456  : i64
    %458 = llvm.mlir.constant(2 : index) : i64
    %459 = llvm.mul %448, %458  : i64
    %460 = llvm.add %457, %459  : i64
    %461 = llvm.add %460, %453  : i64
    %462 = llvm.getelementptr %455[%461] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %463 = llvm.load %462 : !llvm.ptr<i64>
    %464 = llvm.extractvalue %328[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %465 = llvm.mlir.constant(2 : index) : i64
    %466 = llvm.mul %443, %465  : i64
    %467 = llvm.mlir.constant(2 : index) : i64
    %468 = llvm.mul %448, %467  : i64
    %469 = llvm.add %466, %468  : i64
    %470 = llvm.add %469, %453  : i64
    %471 = llvm.getelementptr %464[%470] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %472 = llvm.load %471 : !llvm.ptr<i64>
    %473 = llvm.mul %463, %472  : i64
    %474 = llvm.extractvalue %439[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %475 = llvm.mlir.constant(2 : index) : i64
    %476 = llvm.mul %443, %475  : i64
    %477 = llvm.mlir.constant(2 : index) : i64
    %478 = llvm.mul %448, %477  : i64
    %479 = llvm.add %476, %478  : i64
    %480 = llvm.add %479, %453  : i64
    %481 = llvm.getelementptr %474[%480] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %473, %481 : !llvm.ptr<i64>
    %482 = llvm.add %453, %452  : i64
    llvm.br ^bb62(%482 : i64)
  ^bb64:  // pred: ^bb62
    %483 = llvm.add %448, %447  : i64
    llvm.br ^bb60(%483 : i64)
  ^bb65:  // pred: ^bb60
    %484 = llvm.add %443, %442  : i64
    llvm.br ^bb58(%484 : i64)
  ^bb66:  // pred: ^bb58
    %485 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)>
    %486 = llvm.insertvalue %162, %485[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)> 
    %487 = llvm.insertvalue %439, %486[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)> 
    llvm.return %487 : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) attributes {input_names = ["v0_0"], llvm.emit_c_interface, output_names = ["v5_0", "v3_0"]} {
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
    %12 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)>
    llvm.store %12, %arg0 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)>>
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
    llvm.call @_mlir_ciface_main_graph(%2, %6) : (!llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) -> ()
    %44 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)>>
    %45 = llvm.extractvalue %44[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)> 
    %46 = llvm.extractvalue %44[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)> 
    %47 = llvm.mlir.constant(2 : i64) : i64
    %48 = llvm.mlir.constant(16 : i64) : i64
    %49 = llvm.call @malloc(%48) : (i64) -> !llvm.ptr<i8>
    %50 = llvm.bitcast %49 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %51 = llvm.mlir.constant(4 : i64) : i64
    %52 = llvm.call @omTensorCreateUntyped(%51) : (i64) -> !llvm.ptr<i8>
    %53 = llvm.mlir.constant(1 : i64) : i64
    %54 = llvm.extractvalue %45[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %55 = llvm.bitcast %54 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %56 = llvm.extractvalue %45[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %57 = llvm.bitcast %56 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%52, %53, %55, %57) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %58 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%52, %58) : (!llvm.ptr<i8>, i64) -> ()
    %59 = llvm.call @omTensorGetShape(%52) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %60 = llvm.call @omTensorGetStrides(%52) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %61 = llvm.mlir.constant(0 : i64) : i64
    %62 = llvm.extractvalue %45[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %63 = llvm.getelementptr %59[%61] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %62, %63 : !llvm.ptr<i64>
    %64 = llvm.extractvalue %45[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %65 = llvm.getelementptr %60[%61] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %64, %65 : !llvm.ptr<i64>
    %66 = llvm.mlir.constant(1 : i64) : i64
    %67 = llvm.extractvalue %45[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %68 = llvm.getelementptr %59[%66] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %67, %68 : !llvm.ptr<i64>
    %69 = llvm.extractvalue %45[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %70 = llvm.getelementptr %60[%66] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %69, %70 : !llvm.ptr<i64>
    %71 = llvm.mlir.constant(2 : i64) : i64
    %72 = llvm.extractvalue %45[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %73 = llvm.getelementptr %59[%71] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %72, %73 : !llvm.ptr<i64>
    %74 = llvm.extractvalue %45[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %75 = llvm.getelementptr %60[%71] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %74, %75 : !llvm.ptr<i64>
    %76 = llvm.mlir.constant(3 : i64) : i64
    %77 = llvm.extractvalue %45[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %78 = llvm.getelementptr %59[%76] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %77, %78 : !llvm.ptr<i64>
    %79 = llvm.extractvalue %45[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %80 = llvm.getelementptr %60[%76] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %79, %80 : !llvm.ptr<i64>
    %81 = llvm.mlir.constant(0 : i64) : i64
    %82 = llvm.getelementptr %50[%81] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %52, %82 : !llvm.ptr<ptr<i8>>
    %83 = llvm.mlir.constant(3 : i64) : i64
    %84 = llvm.call @omTensorCreateUntyped(%83) : (i64) -> !llvm.ptr<i8>
    %85 = llvm.mlir.constant(1 : i64) : i64
    %86 = llvm.extractvalue %46[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %87 = llvm.bitcast %86 : !llvm.ptr<i64> to !llvm.ptr<i8>
    %88 = llvm.extractvalue %46[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %89 = llvm.bitcast %88 : !llvm.ptr<i64> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%84, %85, %87, %89) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %90 = llvm.mlir.constant(7 : i64) : i64
    llvm.call @omTensorSetDataType(%84, %90) : (!llvm.ptr<i8>, i64) -> ()
    %91 = llvm.call @omTensorGetShape(%84) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %92 = llvm.call @omTensorGetStrides(%84) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %93 = llvm.mlir.constant(0 : i64) : i64
    %94 = llvm.extractvalue %46[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %95 = llvm.getelementptr %91[%93] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %94, %95 : !llvm.ptr<i64>
    %96 = llvm.extractvalue %46[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %97 = llvm.getelementptr %92[%93] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %96, %97 : !llvm.ptr<i64>
    %98 = llvm.mlir.constant(1 : i64) : i64
    %99 = llvm.extractvalue %46[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %100 = llvm.getelementptr %91[%98] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %99, %100 : !llvm.ptr<i64>
    %101 = llvm.extractvalue %46[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %102 = llvm.getelementptr %92[%98] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %101, %102 : !llvm.ptr<i64>
    %103 = llvm.mlir.constant(2 : i64) : i64
    %104 = llvm.extractvalue %46[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %105 = llvm.getelementptr %91[%103] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %104, %105 : !llvm.ptr<i64>
    %106 = llvm.extractvalue %46[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %107 = llvm.getelementptr %92[%103] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %106, %107 : !llvm.ptr<i64>
    %108 = llvm.mlir.constant(1 : i64) : i64
    %109 = llvm.getelementptr %50[%108] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %84, %109 : !llvm.ptr<ptr<i8>>
    %110 = llvm.call @omTensorListCreate(%50, %47, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %110 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_in_sig : !llvm.ptr<array<72 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<72 x i8>> to !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<137 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<137 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

