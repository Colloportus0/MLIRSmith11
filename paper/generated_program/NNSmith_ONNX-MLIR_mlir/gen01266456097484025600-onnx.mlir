module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [] , \22name\22 : \22v6_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [2] , \22name\22 : \22v5_0\22 }\0A ,    { \22type\22 : \22i1\22 , \22dims\22 : [1 , 1 , 1 , 2] , \22name\22 : \22v4_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i64\22 , \22dims\22 : [1 , 1 , 1] , \22name\22 : \22v0_0\22 }\0A ,    { \22type\22 : \22i64\22 , \22dims\22 : [1 , 1] , \22name\22 : \22v3_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: !llvm.ptr<i32>, %arg4: !llvm.ptr<i32>, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: !llvm.ptr<i1>, %arg9: !llvm.ptr<i1>, %arg10: i64, %arg11: i64, %arg12: i64, %arg13: i64, %arg14: i64, %arg15: i64, %arg16: i64, %arg17: i64, %arg18: i64) -> !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>)> attributes {input_names = ["v6_0", "v5_0", "v4_0"], llvm.emit_c_interface, output_names = ["v0_0", "v3_0"]} {
    %0 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64)>
    %1 = llvm.insertvalue %arg0, %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %2 = llvm.insertvalue %arg1, %1[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %3 = llvm.insertvalue %arg2, %2[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %4 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %5 = llvm.insertvalue %arg3, %4[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %6 = llvm.insertvalue %arg4, %5[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %7 = llvm.insertvalue %arg5, %6[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %8 = llvm.insertvalue %arg6, %7[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %9 = llvm.insertvalue %arg7, %8[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %10 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>
    %11 = llvm.insertvalue %arg8, %10[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %12 = llvm.insertvalue %arg9, %11[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %13 = llvm.insertvalue %arg10, %12[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %14 = llvm.insertvalue %arg11, %13[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %15 = llvm.insertvalue %arg15, %14[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %16 = llvm.insertvalue %arg12, %15[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %17 = llvm.insertvalue %arg16, %16[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %18 = llvm.insertvalue %arg13, %17[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %19 = llvm.insertvalue %arg17, %18[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %20 = llvm.insertvalue %arg14, %19[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %21 = llvm.insertvalue %arg18, %20[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %22 = llvm.mlir.constant(-9223372036854775808 : i64) : i64
    %23 = llvm.mlir.constant(0 : i64) : i64
    %24 = llvm.mlir.constant(-1 : i64) : i64
    %25 = llvm.mlir.addressof @constant_0 : !llvm.ptr<array<1 x i32>>
    %26 = llvm.bitcast %25 : !llvm.ptr<array<1 x i32>> to !llvm.ptr<i32>
    %27 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64)>
    %28 = llvm.insertvalue %26, %27[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %29 = llvm.insertvalue %26, %28[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %30 = llvm.mlir.constant(0 : index) : i64
    %31 = llvm.insertvalue %30, %29[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %32 = llvm.mlir.addressof @constant_1 : !llvm.ptr<array<1 x i32>>
    %33 = llvm.bitcast %32 : !llvm.ptr<array<1 x i32>> to !llvm.ptr<i32>
    %34 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64)>
    %35 = llvm.insertvalue %33, %34[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %36 = llvm.insertvalue %33, %35[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %37 = llvm.mlir.constant(0 : index) : i64
    %38 = llvm.insertvalue %37, %36[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %39 = llvm.mlir.constant(1 : index) : i64
    %40 = llvm.mlir.constant(1 : index) : i64
    %41 = llvm.mlir.constant(1 : index) : i64
    %42 = llvm.mlir.constant(2 : index) : i64
    %43 = llvm.mlir.constant(1 : index) : i64
    %44 = llvm.mlir.constant(2 : index) : i64
    %45 = llvm.mlir.constant(2 : index) : i64
    %46 = llvm.mlir.constant(2 : index) : i64
    %47 = llvm.mlir.null : !llvm.ptr<i32>
    %48 = llvm.getelementptr %47[%46] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %49 = llvm.ptrtoint %48 : !llvm.ptr<i32> to i64
    %50 = llvm.mlir.constant(16 : index) : i64
    %51 = llvm.add %49, %50  : i64
    %52 = llvm.call @malloc(%51) : (i64) -> !llvm.ptr<i8>
    %53 = llvm.bitcast %52 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %54 = llvm.ptrtoint %53 : !llvm.ptr<i32> to i64
    %55 = llvm.mlir.constant(1 : index) : i64
    %56 = llvm.sub %50, %55  : i64
    %57 = llvm.add %54, %56  : i64
    %58 = llvm.urem %57, %50  : i64
    %59 = llvm.sub %57, %58  : i64
    %60 = llvm.inttoptr %59 : i64 to !llvm.ptr<i32>
    %61 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %62 = llvm.insertvalue %53, %61[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %63 = llvm.insertvalue %60, %62[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %64 = llvm.mlir.constant(0 : index) : i64
    %65 = llvm.insertvalue %64, %63[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %66 = llvm.insertvalue %39, %65[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %67 = llvm.insertvalue %40, %66[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %68 = llvm.insertvalue %41, %67[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %69 = llvm.insertvalue %42, %68[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %70 = llvm.insertvalue %45, %69[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %71 = llvm.insertvalue %44, %70[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %72 = llvm.insertvalue %42, %71[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %73 = llvm.insertvalue %43, %72[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %74 = llvm.mlir.constant(0 : index) : i64
    %75 = llvm.mlir.constant(1 : index) : i64
    %76 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%74 : i64)
  ^bb1(%77: i64):  // 2 preds: ^bb0, ^bb11
    %78 = llvm.icmp "slt" %77, %75 : i64
    llvm.cond_br %78, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    %79 = llvm.mlir.constant(0 : index) : i64
    %80 = llvm.mlir.constant(1 : index) : i64
    %81 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%79 : i64)
  ^bb3(%82: i64):  // 2 preds: ^bb2, ^bb10
    %83 = llvm.icmp "slt" %82, %80 : i64
    llvm.cond_br %83, ^bb4, ^bb11
  ^bb4:  // pred: ^bb3
    %84 = llvm.mlir.constant(0 : index) : i64
    %85 = llvm.mlir.constant(1 : index) : i64
    %86 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%84 : i64)
  ^bb5(%87: i64):  // 2 preds: ^bb4, ^bb9
    %88 = llvm.icmp "slt" %87, %85 : i64
    llvm.cond_br %88, ^bb6, ^bb10
  ^bb6:  // pred: ^bb5
    %89 = llvm.mlir.constant(0 : index) : i64
    %90 = llvm.mlir.constant(2 : index) : i64
    %91 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%89 : i64)
  ^bb7(%92: i64):  // 2 preds: ^bb6, ^bb8
    %93 = llvm.icmp "slt" %92, %90 : i64
    llvm.cond_br %93, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %94 = llvm.extractvalue %21[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %95 = llvm.mlir.constant(2 : index) : i64
    %96 = llvm.mul %77, %95  : i64
    %97 = llvm.mlir.constant(2 : index) : i64
    %98 = llvm.mul %82, %97  : i64
    %99 = llvm.add %96, %98  : i64
    %100 = llvm.mlir.constant(2 : index) : i64
    %101 = llvm.mul %87, %100  : i64
    %102 = llvm.add %99, %101  : i64
    %103 = llvm.add %102, %92  : i64
    %104 = llvm.getelementptr %94[%103] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %105 = llvm.load %104 : !llvm.ptr<i1>
    %106 = llvm.extractvalue %9[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %107 = llvm.getelementptr %106[%92] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %108 = llvm.load %107 : !llvm.ptr<i32>
    %109 = llvm.extractvalue %3[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %110 = llvm.load %109 : !llvm.ptr<i32>
    %111 = llvm.select %105, %108, %110 : i1, i32
    %112 = llvm.extractvalue %73[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %113 = llvm.mlir.constant(2 : index) : i64
    %114 = llvm.mul %77, %113  : i64
    %115 = llvm.mlir.constant(2 : index) : i64
    %116 = llvm.mul %82, %115  : i64
    %117 = llvm.add %114, %116  : i64
    %118 = llvm.mlir.constant(2 : index) : i64
    %119 = llvm.mul %87, %118  : i64
    %120 = llvm.add %117, %119  : i64
    %121 = llvm.add %120, %92  : i64
    %122 = llvm.getelementptr %112[%121] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %111, %122 : !llvm.ptr<i32>
    %123 = llvm.add %92, %91  : i64
    llvm.br ^bb7(%123 : i64)
  ^bb9:  // pred: ^bb7
    %124 = llvm.add %87, %86  : i64
    llvm.br ^bb5(%124 : i64)
  ^bb10:  // pred: ^bb5
    %125 = llvm.add %82, %81  : i64
    llvm.br ^bb3(%125 : i64)
  ^bb11:  // pred: ^bb3
    %126 = llvm.add %77, %76  : i64
    llvm.br ^bb1(%126 : i64)
  ^bb12:  // pred: ^bb1
    %127 = llvm.mlir.constant(1 : index) : i64
    %128 = llvm.mlir.constant(1 : index) : i64
    %129 = llvm.mlir.constant(1 : index) : i64
    %130 = llvm.mlir.constant(2 : index) : i64
    %131 = llvm.mlir.constant(1 : index) : i64
    %132 = llvm.mlir.constant(2 : index) : i64
    %133 = llvm.mlir.constant(2 : index) : i64
    %134 = llvm.mlir.constant(2 : index) : i64
    %135 = llvm.mlir.null : !llvm.ptr<i32>
    %136 = llvm.getelementptr %135[%134] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %137 = llvm.ptrtoint %136 : !llvm.ptr<i32> to i64
    %138 = llvm.mlir.constant(16 : index) : i64
    %139 = llvm.add %137, %138  : i64
    %140 = llvm.call @malloc(%139) : (i64) -> !llvm.ptr<i8>
    %141 = llvm.bitcast %140 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %142 = llvm.ptrtoint %141 : !llvm.ptr<i32> to i64
    %143 = llvm.mlir.constant(1 : index) : i64
    %144 = llvm.sub %138, %143  : i64
    %145 = llvm.add %142, %144  : i64
    %146 = llvm.urem %145, %138  : i64
    %147 = llvm.sub %145, %146  : i64
    %148 = llvm.inttoptr %147 : i64 to !llvm.ptr<i32>
    %149 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %150 = llvm.insertvalue %141, %149[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %151 = llvm.insertvalue %148, %150[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %152 = llvm.mlir.constant(0 : index) : i64
    %153 = llvm.insertvalue %152, %151[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %154 = llvm.insertvalue %127, %153[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %155 = llvm.insertvalue %128, %154[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %156 = llvm.insertvalue %129, %155[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %157 = llvm.insertvalue %130, %156[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %158 = llvm.insertvalue %133, %157[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %159 = llvm.insertvalue %132, %158[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %160 = llvm.insertvalue %130, %159[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %161 = llvm.insertvalue %131, %160[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %162 = llvm.mlir.constant(0 : index) : i64
    %163 = llvm.mlir.constant(1 : index) : i64
    %164 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%162 : i64)
  ^bb13(%165: i64):  // 2 preds: ^bb12, ^bb23
    %166 = llvm.icmp "slt" %165, %163 : i64
    llvm.cond_br %166, ^bb14, ^bb24
  ^bb14:  // pred: ^bb13
    %167 = llvm.mlir.constant(0 : index) : i64
    %168 = llvm.mlir.constant(1 : index) : i64
    %169 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb15(%167 : i64)
  ^bb15(%170: i64):  // 2 preds: ^bb14, ^bb22
    %171 = llvm.icmp "slt" %170, %168 : i64
    llvm.cond_br %171, ^bb16, ^bb23
  ^bb16:  // pred: ^bb15
    %172 = llvm.mlir.constant(0 : index) : i64
    %173 = llvm.mlir.constant(1 : index) : i64
    %174 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb17(%172 : i64)
  ^bb17(%175: i64):  // 2 preds: ^bb16, ^bb21
    %176 = llvm.icmp "slt" %175, %173 : i64
    llvm.cond_br %176, ^bb18, ^bb22
  ^bb18:  // pred: ^bb17
    %177 = llvm.mlir.constant(0 : index) : i64
    %178 = llvm.mlir.constant(2 : index) : i64
    %179 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%177 : i64)
  ^bb19(%180: i64):  // 2 preds: ^bb18, ^bb20
    %181 = llvm.icmp "slt" %180, %178 : i64
    llvm.cond_br %181, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %182 = llvm.extractvalue %73[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %183 = llvm.mlir.constant(2 : index) : i64
    %184 = llvm.mul %165, %183  : i64
    %185 = llvm.mlir.constant(2 : index) : i64
    %186 = llvm.mul %170, %185  : i64
    %187 = llvm.add %184, %186  : i64
    %188 = llvm.mlir.constant(2 : index) : i64
    %189 = llvm.mul %175, %188  : i64
    %190 = llvm.add %187, %189  : i64
    %191 = llvm.add %190, %180  : i64
    %192 = llvm.getelementptr %182[%191] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %193 = llvm.load %192 : !llvm.ptr<i32>
    %194 = llvm.extractvalue %31[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %195 = llvm.load %194 : !llvm.ptr<i32>
    %196 = llvm.icmp "slt" %193, %195 : i32
    %197 = llvm.select %196, %195, %193 : i1, i32
    %198 = llvm.extractvalue %38[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %199 = llvm.load %198 : !llvm.ptr<i32>
    %200 = llvm.icmp "slt" %197, %199 : i32
    %201 = llvm.select %200, %197, %199 : i1, i32
    %202 = llvm.extractvalue %161[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %203 = llvm.mlir.constant(2 : index) : i64
    %204 = llvm.mul %165, %203  : i64
    %205 = llvm.mlir.constant(2 : index) : i64
    %206 = llvm.mul %170, %205  : i64
    %207 = llvm.add %204, %206  : i64
    %208 = llvm.mlir.constant(2 : index) : i64
    %209 = llvm.mul %175, %208  : i64
    %210 = llvm.add %207, %209  : i64
    %211 = llvm.add %210, %180  : i64
    %212 = llvm.getelementptr %202[%211] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %201, %212 : !llvm.ptr<i32>
    %213 = llvm.add %180, %179  : i64
    llvm.br ^bb19(%213 : i64)
  ^bb21:  // pred: ^bb19
    %214 = llvm.add %175, %174  : i64
    llvm.br ^bb17(%214 : i64)
  ^bb22:  // pred: ^bb17
    %215 = llvm.add %170, %169  : i64
    llvm.br ^bb15(%215 : i64)
  ^bb23:  // pred: ^bb15
    %216 = llvm.add %165, %164  : i64
    llvm.br ^bb13(%216 : i64)
  ^bb24:  // pred: ^bb13
    %217 = llvm.mlir.constant(1 : index) : i64
    %218 = llvm.mlir.constant(1 : index) : i64
    %219 = llvm.mlir.constant(1 : index) : i64
    %220 = llvm.mlir.constant(1 : index) : i64
    %221 = llvm.mlir.null : !llvm.ptr<i64>
    %222 = llvm.getelementptr %221[%217] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %223 = llvm.ptrtoint %222 : !llvm.ptr<i64> to i64
    %224 = llvm.mlir.constant(16 : index) : i64
    %225 = llvm.add %223, %224  : i64
    %226 = llvm.call @malloc(%225) : (i64) -> !llvm.ptr<i8>
    %227 = llvm.bitcast %226 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %228 = llvm.ptrtoint %227 : !llvm.ptr<i64> to i64
    %229 = llvm.mlir.constant(1 : index) : i64
    %230 = llvm.sub %224, %229  : i64
    %231 = llvm.add %228, %230  : i64
    %232 = llvm.urem %231, %224  : i64
    %233 = llvm.sub %231, %232  : i64
    %234 = llvm.inttoptr %233 : i64 to !llvm.ptr<i64>
    %235 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>
    %236 = llvm.insertvalue %227, %235[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %237 = llvm.insertvalue %234, %236[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %238 = llvm.mlir.constant(0 : index) : i64
    %239 = llvm.insertvalue %238, %237[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %240 = llvm.insertvalue %217, %239[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %241 = llvm.insertvalue %218, %240[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %242 = llvm.insertvalue %219, %241[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %243 = llvm.insertvalue %218, %242[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %244 = llvm.insertvalue %219, %243[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %245 = llvm.insertvalue %220, %244[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %246 = llvm.mlir.constant(0 : index) : i64
    %247 = llvm.mlir.constant(1 : index) : i64
    %248 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb25(%246 : i64)
  ^bb25(%249: i64):  // 2 preds: ^bb24, ^bb32
    %250 = llvm.icmp "slt" %249, %247 : i64
    llvm.cond_br %250, ^bb26, ^bb33
  ^bb26:  // pred: ^bb25
    %251 = llvm.mlir.constant(0 : index) : i64
    %252 = llvm.mlir.constant(1 : index) : i64
    %253 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb27(%251 : i64)
  ^bb27(%254: i64):  // 2 preds: ^bb26, ^bb31
    %255 = llvm.icmp "slt" %254, %252 : i64
    llvm.cond_br %255, ^bb28, ^bb32
  ^bb28:  // pred: ^bb27
    %256 = llvm.mlir.constant(0 : index) : i64
    %257 = llvm.mlir.constant(1 : index) : i64
    %258 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb29(%256 : i64)
  ^bb29(%259: i64):  // 2 preds: ^bb28, ^bb30
    %260 = llvm.icmp "slt" %259, %257 : i64
    llvm.cond_br %260, ^bb30, ^bb31
  ^bb30:  // pred: ^bb29
    %261 = llvm.extractvalue %245[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %262 = llvm.add %249, %254  : i64
    %263 = llvm.add %262, %259  : i64
    %264 = llvm.getelementptr %261[%263] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %24, %264 : !llvm.ptr<i64>
    %265 = llvm.add %259, %258  : i64
    llvm.br ^bb29(%265 : i64)
  ^bb31:  // pred: ^bb29
    %266 = llvm.add %254, %253  : i64
    llvm.br ^bb27(%266 : i64)
  ^bb32:  // pred: ^bb27
    %267 = llvm.add %249, %248  : i64
    llvm.br ^bb25(%267 : i64)
  ^bb33:  // pred: ^bb25
    %268 = llvm.mlir.constant(0 : index) : i64
    %269 = llvm.mlir.constant(1 : index) : i64
    %270 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb34(%268 : i64)
  ^bb34(%271: i64):  // 2 preds: ^bb33, ^bb44
    %272 = llvm.icmp "slt" %271, %269 : i64
    llvm.cond_br %272, ^bb35, ^bb45
  ^bb35:  // pred: ^bb34
    %273 = llvm.mlir.constant(0 : index) : i64
    %274 = llvm.mlir.constant(1 : index) : i64
    %275 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb36(%273 : i64)
  ^bb36(%276: i64):  // 2 preds: ^bb35, ^bb43
    %277 = llvm.icmp "slt" %276, %274 : i64
    llvm.cond_br %277, ^bb37, ^bb44
  ^bb37:  // pred: ^bb36
    %278 = llvm.mlir.constant(0 : index) : i64
    %279 = llvm.mlir.constant(1 : index) : i64
    %280 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb38(%278 : i64)
  ^bb38(%281: i64):  // 2 preds: ^bb37, ^bb42
    %282 = llvm.icmp "slt" %281, %279 : i64
    llvm.cond_br %282, ^bb39, ^bb43
  ^bb39:  // pred: ^bb38
    %283 = llvm.mlir.constant(0 : index) : i64
    %284 = llvm.mlir.constant(2 : index) : i64
    %285 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb40(%283 : i64)
  ^bb40(%286: i64):  // 2 preds: ^bb39, ^bb41
    %287 = llvm.icmp "slt" %286, %284 : i64
    llvm.cond_br %287, ^bb41, ^bb42
  ^bb41:  // pred: ^bb40
    %288 = llvm.extractvalue %161[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %289 = llvm.mlir.constant(2 : index) : i64
    %290 = llvm.mul %271, %289  : i64
    %291 = llvm.mlir.constant(2 : index) : i64
    %292 = llvm.mul %276, %291  : i64
    %293 = llvm.add %290, %292  : i64
    %294 = llvm.mlir.constant(2 : index) : i64
    %295 = llvm.mul %281, %294  : i64
    %296 = llvm.add %293, %295  : i64
    %297 = llvm.add %296, %286  : i64
    %298 = llvm.getelementptr %288[%297] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %299 = llvm.load %298 : !llvm.ptr<i32>
    %300 = llvm.extractvalue %245[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %301 = llvm.add %271, %276  : i64
    %302 = llvm.add %301, %281  : i64
    %303 = llvm.getelementptr %300[%302] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %304 = llvm.load %303 : !llvm.ptr<i64>
    %305 = llvm.icmp "slt" %304, %23 : i64
    %306 = llvm.select %305, %23, %304 : i1, i64
    %307 = llvm.extractvalue %161[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %308 = llvm.mlir.constant(2 : index) : i64
    %309 = llvm.mul %271, %308  : i64
    %310 = llvm.mlir.constant(2 : index) : i64
    %311 = llvm.mul %276, %310  : i64
    %312 = llvm.add %309, %311  : i64
    %313 = llvm.mlir.constant(2 : index) : i64
    %314 = llvm.mul %281, %313  : i64
    %315 = llvm.add %312, %314  : i64
    %316 = llvm.add %315, %306  : i64
    %317 = llvm.getelementptr %307[%316] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %318 = llvm.load %317 : !llvm.ptr<i32>
    %319 = llvm.icmp "slt" %299, %318 : i32
    %320 = llvm.select %319, %286, %306 : i1, i64
    %321 = llvm.extractvalue %245[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %322 = llvm.add %271, %276  : i64
    %323 = llvm.add %322, %281  : i64
    %324 = llvm.getelementptr %321[%323] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %320, %324 : !llvm.ptr<i64>
    %325 = llvm.add %286, %285  : i64
    llvm.br ^bb40(%325 : i64)
  ^bb42:  // pred: ^bb40
    %326 = llvm.add %281, %280  : i64
    llvm.br ^bb38(%326 : i64)
  ^bb43:  // pred: ^bb38
    %327 = llvm.add %276, %275  : i64
    llvm.br ^bb36(%327 : i64)
  ^bb44:  // pred: ^bb36
    %328 = llvm.add %271, %270  : i64
    llvm.br ^bb34(%328 : i64)
  ^bb45:  // pred: ^bb34
    %329 = llvm.mlir.constant(1 : index) : i64
    %330 = llvm.mlir.constant(1 : index) : i64
    %331 = llvm.mlir.constant(1 : index) : i64
    %332 = llvm.mlir.constant(1 : index) : i64
    %333 = llvm.mlir.null : !llvm.ptr<i64>
    %334 = llvm.getelementptr %333[%329] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %335 = llvm.ptrtoint %334 : !llvm.ptr<i64> to i64
    %336 = llvm.mlir.constant(16 : index) : i64
    %337 = llvm.add %335, %336  : i64
    %338 = llvm.call @malloc(%337) : (i64) -> !llvm.ptr<i8>
    %339 = llvm.bitcast %338 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %340 = llvm.ptrtoint %339 : !llvm.ptr<i64> to i64
    %341 = llvm.mlir.constant(1 : index) : i64
    %342 = llvm.sub %336, %341  : i64
    %343 = llvm.add %340, %342  : i64
    %344 = llvm.urem %343, %336  : i64
    %345 = llvm.sub %343, %344  : i64
    %346 = llvm.inttoptr %345 : i64 to !llvm.ptr<i64>
    %347 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>
    %348 = llvm.insertvalue %339, %347[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %349 = llvm.insertvalue %346, %348[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %350 = llvm.mlir.constant(0 : index) : i64
    %351 = llvm.insertvalue %350, %349[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %352 = llvm.insertvalue %329, %351[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %353 = llvm.insertvalue %330, %352[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %354 = llvm.insertvalue %331, %353[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %355 = llvm.insertvalue %330, %354[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %356 = llvm.insertvalue %331, %355[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %357 = llvm.insertvalue %332, %356[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %358 = llvm.mlir.constant(1 : index) : i64
    %359 = llvm.mlir.null : !llvm.ptr<i64>
    %360 = llvm.getelementptr %359[%358] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %361 = llvm.ptrtoint %360 : !llvm.ptr<i64> to i64
    %362 = llvm.alloca %361 x i64 : (i64) -> !llvm.ptr<i64>
    %363 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64)>
    %364 = llvm.insertvalue %362, %363[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %365 = llvm.insertvalue %362, %364[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %366 = llvm.mlir.constant(0 : index) : i64
    %367 = llvm.insertvalue %366, %365[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %368 = llvm.mlir.constant(0 : index) : i64
    %369 = llvm.mlir.constant(1 : index) : i64
    %370 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb46(%368 : i64)
  ^bb46(%371: i64):  // 2 preds: ^bb45, ^bb56
    %372 = llvm.icmp "slt" %371, %369 : i64
    llvm.cond_br %372, ^bb47, ^bb57
  ^bb47:  // pred: ^bb46
    %373 = llvm.mlir.constant(0 : index) : i64
    %374 = llvm.mlir.constant(1 : index) : i64
    %375 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb48(%373 : i64)
  ^bb48(%376: i64):  // 2 preds: ^bb47, ^bb55
    %377 = llvm.icmp "slt" %376, %374 : i64
    llvm.cond_br %377, ^bb49, ^bb56
  ^bb49:  // pred: ^bb48
    %378 = llvm.mlir.constant(0 : index) : i64
    %379 = llvm.mlir.constant(1 : index) : i64
    %380 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb50(%378 : i64)
  ^bb50(%381: i64):  // 2 preds: ^bb49, ^bb54
    %382 = llvm.icmp "slt" %381, %379 : i64
    llvm.cond_br %382, ^bb51, ^bb55
  ^bb51:  // pred: ^bb50
    %383 = llvm.extractvalue %367[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    llvm.store %23, %383 : !llvm.ptr<i64>
    %384 = llvm.mlir.constant(0 : index) : i64
    %385 = llvm.mlir.constant(1 : index) : i64
    %386 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb52(%384 : i64)
  ^bb52(%387: i64):  // 2 preds: ^bb51, ^bb53
    %388 = llvm.icmp "slt" %387, %385 : i64
    llvm.cond_br %388, ^bb53, ^bb54
  ^bb53:  // pred: ^bb52
    %389 = llvm.extractvalue %245[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %390 = llvm.add %371, %376  : i64
    %391 = llvm.add %390, %387  : i64
    %392 = llvm.getelementptr %389[%391] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %393 = llvm.load %392 : !llvm.ptr<i64>
    %394 = llvm.extractvalue %245[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %395 = llvm.add %371, %387  : i64
    %396 = llvm.add %395, %381  : i64
    %397 = llvm.getelementptr %394[%396] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %398 = llvm.load %397 : !llvm.ptr<i64>
    %399 = llvm.extractvalue %367[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %400 = llvm.load %399 : !llvm.ptr<i64>
    %401 = llvm.mul %393, %398  : i64
    %402 = llvm.add %400, %401  : i64
    %403 = llvm.extractvalue %367[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    llvm.store %402, %403 : !llvm.ptr<i64>
    %404 = llvm.add %387, %386  : i64
    llvm.br ^bb52(%404 : i64)
  ^bb54:  // pred: ^bb52
    %405 = llvm.extractvalue %367[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %406 = llvm.load %405 : !llvm.ptr<i64>
    %407 = llvm.extractvalue %357[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %408 = llvm.add %371, %376  : i64
    %409 = llvm.add %408, %381  : i64
    %410 = llvm.getelementptr %407[%409] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %406, %410 : !llvm.ptr<i64>
    %411 = llvm.add %381, %380  : i64
    llvm.br ^bb50(%411 : i64)
  ^bb55:  // pred: ^bb50
    %412 = llvm.add %376, %375  : i64
    llvm.br ^bb48(%412 : i64)
  ^bb56:  // pred: ^bb48
    %413 = llvm.add %371, %370  : i64
    llvm.br ^bb46(%413 : i64)
  ^bb57:  // pred: ^bb46
    %414 = llvm.mlir.constant(1 : index) : i64
    %415 = llvm.mlir.constant(1 : index) : i64
    %416 = llvm.mlir.constant(1 : index) : i64
    %417 = llvm.mlir.null : !llvm.ptr<i64>
    %418 = llvm.getelementptr %417[%414] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %419 = llvm.ptrtoint %418 : !llvm.ptr<i64> to i64
    %420 = llvm.mlir.constant(16 : index) : i64
    %421 = llvm.add %419, %420  : i64
    %422 = llvm.call @malloc(%421) : (i64) -> !llvm.ptr<i8>
    %423 = llvm.bitcast %422 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %424 = llvm.ptrtoint %423 : !llvm.ptr<i64> to i64
    %425 = llvm.mlir.constant(1 : index) : i64
    %426 = llvm.sub %420, %425  : i64
    %427 = llvm.add %424, %426  : i64
    %428 = llvm.urem %427, %420  : i64
    %429 = llvm.sub %427, %428  : i64
    %430 = llvm.inttoptr %429 : i64 to !llvm.ptr<i64>
    %431 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>
    %432 = llvm.insertvalue %423, %431[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %433 = llvm.insertvalue %430, %432[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %434 = llvm.mlir.constant(0 : index) : i64
    %435 = llvm.insertvalue %434, %433[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %436 = llvm.insertvalue %414, %435[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %437 = llvm.insertvalue %415, %436[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %438 = llvm.insertvalue %415, %437[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %439 = llvm.insertvalue %416, %438[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %440 = llvm.mlir.constant(0 : index) : i64
    %441 = llvm.mlir.constant(1 : index) : i64
    %442 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb58(%440 : i64)
  ^bb58(%443: i64):  // 2 preds: ^bb57, ^bb62
    %444 = llvm.icmp "slt" %443, %441 : i64
    llvm.cond_br %444, ^bb59, ^bb63
  ^bb59:  // pred: ^bb58
    %445 = llvm.mlir.constant(0 : index) : i64
    %446 = llvm.mlir.constant(1 : index) : i64
    %447 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb60(%445 : i64)
  ^bb60(%448: i64):  // 2 preds: ^bb59, ^bb61
    %449 = llvm.icmp "slt" %448, %446 : i64
    llvm.cond_br %449, ^bb61, ^bb62
  ^bb61:  // pred: ^bb60
    %450 = llvm.extractvalue %439[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %451 = llvm.add %443, %448  : i64
    %452 = llvm.getelementptr %450[%451] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %22, %452 : !llvm.ptr<i64>
    %453 = llvm.add %448, %447  : i64
    llvm.br ^bb60(%453 : i64)
  ^bb62:  // pred: ^bb60
    %454 = llvm.add %443, %442  : i64
    llvm.br ^bb58(%454 : i64)
  ^bb63:  // pred: ^bb58
    %455 = llvm.mlir.constant(0 : index) : i64
    %456 = llvm.mlir.constant(1 : index) : i64
    %457 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb64(%455 : i64)
  ^bb64(%458: i64):  // 2 preds: ^bb63, ^bb71
    %459 = llvm.icmp "slt" %458, %456 : i64
    llvm.cond_br %459, ^bb65, ^bb72
  ^bb65:  // pred: ^bb64
    %460 = llvm.mlir.constant(0 : index) : i64
    %461 = llvm.mlir.constant(1 : index) : i64
    %462 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb66(%460 : i64)
  ^bb66(%463: i64):  // 2 preds: ^bb65, ^bb70
    %464 = llvm.icmp "slt" %463, %461 : i64
    llvm.cond_br %464, ^bb67, ^bb71
  ^bb67:  // pred: ^bb66
    %465 = llvm.mlir.constant(0 : index) : i64
    %466 = llvm.mlir.constant(1 : index) : i64
    %467 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb68(%465 : i64)
  ^bb68(%468: i64):  // 2 preds: ^bb67, ^bb69
    %469 = llvm.icmp "slt" %468, %466 : i64
    llvm.cond_br %469, ^bb69, ^bb70
  ^bb69:  // pred: ^bb68
    %470 = llvm.extractvalue %245[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %471 = llvm.add %458, %463  : i64
    %472 = llvm.add %471, %468  : i64
    %473 = llvm.getelementptr %470[%472] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %474 = llvm.load %473 : !llvm.ptr<i64>
    %475 = llvm.extractvalue %439[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %476 = llvm.add %463, %468  : i64
    %477 = llvm.getelementptr %475[%476] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %478 = llvm.load %477 : !llvm.ptr<i64>
    %479 = llvm.icmp "sgt" %478, %474 : i64
    %480 = llvm.select %479, %478, %474 : i1, i64
    %481 = llvm.extractvalue %439[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %482 = llvm.add %463, %468  : i64
    %483 = llvm.getelementptr %481[%482] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %480, %483 : !llvm.ptr<i64>
    %484 = llvm.add %468, %467  : i64
    llvm.br ^bb68(%484 : i64)
  ^bb70:  // pred: ^bb68
    %485 = llvm.add %463, %462  : i64
    llvm.br ^bb66(%485 : i64)
  ^bb71:  // pred: ^bb66
    %486 = llvm.add %458, %457  : i64
    llvm.br ^bb64(%486 : i64)
  ^bb72:  // pred: ^bb64
    %487 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>)>
    %488 = llvm.insertvalue %357, %487[0] : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>)> 
    %489 = llvm.insertvalue %439, %488[1] : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>)> 
    llvm.return %489 : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64)>>, %arg2: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>>, %arg3: !llvm.ptr<struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>>) attributes {input_names = ["v6_0", "v5_0", "v4_0"], llvm.emit_c_interface, output_names = ["v0_0", "v3_0"]} {
    %0 = llvm.load %arg1 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64)>>
    %1 = llvm.extractvalue %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %2 = llvm.extractvalue %0[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %3 = llvm.extractvalue %0[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %4 = llvm.load %arg2 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>>
    %5 = llvm.extractvalue %4[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %6 = llvm.extractvalue %4[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %7 = llvm.extractvalue %4[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %8 = llvm.extractvalue %4[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %9 = llvm.extractvalue %4[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %10 = llvm.load %arg3 : !llvm.ptr<struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>>
    %11 = llvm.extractvalue %10[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %12 = llvm.extractvalue %10[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %13 = llvm.extractvalue %10[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %14 = llvm.extractvalue %10[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %15 = llvm.extractvalue %10[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %16 = llvm.extractvalue %10[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %17 = llvm.extractvalue %10[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %18 = llvm.extractvalue %10[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %19 = llvm.extractvalue %10[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %20 = llvm.extractvalue %10[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %21 = llvm.extractvalue %10[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %22 = llvm.call @main_graph(%1, %2, %3, %5, %6, %7, %8, %9, %11, %12, %13, %14, %15, %16, %17, %18, %19, %20, %21) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, !llvm.ptr<i1>, !llvm.ptr<i1>, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>)>
    llvm.store %22, %arg0 : !llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>)>>
    %3 = llvm.mlir.constant(0 : i64) : i64
    %4 = llvm.getelementptr %0[%3] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %5 = llvm.load %4 : !llvm.ptr<ptr<i8>>
    %6 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64)>>
    %7 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64)>
    %8 = llvm.call @omTensorGetDataPtr(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %9 = llvm.bitcast %8 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %10 = llvm.insertvalue %9, %7[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %11 = llvm.insertvalue %9, %10[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %12 = llvm.mlir.constant(0 : i64) : i64
    %13 = llvm.insertvalue %12, %11[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %14 = llvm.call @omTensorGetShape(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %15 = llvm.call @omTensorGetStrides(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    llvm.store %13, %6 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64)>>
    %16 = llvm.mlir.constant(1 : i64) : i64
    %17 = llvm.getelementptr %0[%16] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %18 = llvm.load %17 : !llvm.ptr<ptr<i8>>
    %19 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>>
    %20 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %21 = llvm.call @omTensorGetDataPtr(%18) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %22 = llvm.bitcast %21 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %23 = llvm.insertvalue %22, %20[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %24 = llvm.insertvalue %22, %23[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %25 = llvm.mlir.constant(0 : i64) : i64
    %26 = llvm.insertvalue %25, %24[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %27 = llvm.call @omTensorGetShape(%18) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %28 = llvm.call @omTensorGetStrides(%18) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %29 = llvm.mlir.constant(0 : i64) : i64
    %30 = llvm.getelementptr %27[%29] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %31 = llvm.load %30 : !llvm.ptr<i64>
    %32 = llvm.insertvalue %31, %26[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %33 = llvm.getelementptr %28[%29] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %34 = llvm.load %33 : !llvm.ptr<i64>
    %35 = llvm.insertvalue %34, %32[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.store %35, %19 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>>
    %36 = llvm.mlir.constant(2 : i64) : i64
    %37 = llvm.getelementptr %0[%36] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %38 = llvm.load %37 : !llvm.ptr<ptr<i8>>
    %39 = llvm.alloca %1 x !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>>
    %40 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>
    %41 = llvm.call @omTensorGetDataPtr(%38) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %42 = llvm.bitcast %41 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %43 = llvm.insertvalue %42, %40[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %44 = llvm.insertvalue %42, %43[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %45 = llvm.mlir.constant(0 : i64) : i64
    %46 = llvm.insertvalue %45, %44[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %47 = llvm.call @omTensorGetShape(%38) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %48 = llvm.call @omTensorGetStrides(%38) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %49 = llvm.mlir.constant(0 : i64) : i64
    %50 = llvm.getelementptr %47[%49] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %51 = llvm.load %50 : !llvm.ptr<i64>
    %52 = llvm.insertvalue %51, %46[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %53 = llvm.getelementptr %48[%49] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %54 = llvm.load %53 : !llvm.ptr<i64>
    %55 = llvm.insertvalue %54, %52[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %56 = llvm.mlir.constant(1 : i64) : i64
    %57 = llvm.getelementptr %47[%56] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %58 = llvm.load %57 : !llvm.ptr<i64>
    %59 = llvm.insertvalue %58, %55[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %60 = llvm.getelementptr %48[%56] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %61 = llvm.load %60 : !llvm.ptr<i64>
    %62 = llvm.insertvalue %61, %59[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %63 = llvm.mlir.constant(2 : i64) : i64
    %64 = llvm.getelementptr %47[%63] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %65 = llvm.load %64 : !llvm.ptr<i64>
    %66 = llvm.insertvalue %65, %62[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %67 = llvm.getelementptr %48[%63] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %68 = llvm.load %67 : !llvm.ptr<i64>
    %69 = llvm.insertvalue %68, %66[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %70 = llvm.mlir.constant(3 : i64) : i64
    %71 = llvm.getelementptr %47[%70] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %72 = llvm.load %71 : !llvm.ptr<i64>
    %73 = llvm.insertvalue %72, %69[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %74 = llvm.getelementptr %48[%70] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %75 = llvm.load %74 : !llvm.ptr<i64>
    %76 = llvm.insertvalue %75, %73[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    llvm.store %76, %39 : !llvm.ptr<struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>>
    llvm.call @_mlir_ciface_main_graph(%2, %6, %19, %39) : (!llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>>, !llvm.ptr<struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>>) -> ()
    %77 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>)>>
    %78 = llvm.extractvalue %77[0] : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>)> 
    %79 = llvm.extractvalue %77[1] : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>)> 
    %80 = llvm.mlir.constant(2 : i64) : i64
    %81 = llvm.mlir.constant(16 : i64) : i64
    %82 = llvm.call @malloc(%81) : (i64) -> !llvm.ptr<i8>
    %83 = llvm.bitcast %82 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %84 = llvm.mlir.constant(3 : i64) : i64
    %85 = llvm.call @omTensorCreateUntyped(%84) : (i64) -> !llvm.ptr<i8>
    %86 = llvm.mlir.constant(1 : i64) : i64
    %87 = llvm.extractvalue %78[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %88 = llvm.bitcast %87 : !llvm.ptr<i64> to !llvm.ptr<i8>
    %89 = llvm.extractvalue %78[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %90 = llvm.bitcast %89 : !llvm.ptr<i64> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%85, %86, %88, %90) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %91 = llvm.mlir.constant(7 : i64) : i64
    llvm.call @omTensorSetDataType(%85, %91) : (!llvm.ptr<i8>, i64) -> ()
    %92 = llvm.call @omTensorGetShape(%85) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %93 = llvm.call @omTensorGetStrides(%85) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %94 = llvm.mlir.constant(0 : i64) : i64
    %95 = llvm.extractvalue %78[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %96 = llvm.getelementptr %92[%94] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %95, %96 : !llvm.ptr<i64>
    %97 = llvm.extractvalue %78[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %98 = llvm.getelementptr %93[%94] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %97, %98 : !llvm.ptr<i64>
    %99 = llvm.mlir.constant(1 : i64) : i64
    %100 = llvm.extractvalue %78[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %101 = llvm.getelementptr %92[%99] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %100, %101 : !llvm.ptr<i64>
    %102 = llvm.extractvalue %78[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %103 = llvm.getelementptr %93[%99] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %102, %103 : !llvm.ptr<i64>
    %104 = llvm.mlir.constant(2 : i64) : i64
    %105 = llvm.extractvalue %78[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %106 = llvm.getelementptr %92[%104] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %105, %106 : !llvm.ptr<i64>
    %107 = llvm.extractvalue %78[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %108 = llvm.getelementptr %93[%104] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %107, %108 : !llvm.ptr<i64>
    %109 = llvm.mlir.constant(0 : i64) : i64
    %110 = llvm.getelementptr %83[%109] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %85, %110 : !llvm.ptr<ptr<i8>>
    %111 = llvm.mlir.constant(2 : i64) : i64
    %112 = llvm.call @omTensorCreateUntyped(%111) : (i64) -> !llvm.ptr<i8>
    %113 = llvm.mlir.constant(1 : i64) : i64
    %114 = llvm.extractvalue %79[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %115 = llvm.bitcast %114 : !llvm.ptr<i64> to !llvm.ptr<i8>
    %116 = llvm.extractvalue %79[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %117 = llvm.bitcast %116 : !llvm.ptr<i64> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%112, %113, %115, %117) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %118 = llvm.mlir.constant(7 : i64) : i64
    llvm.call @omTensorSetDataType(%112, %118) : (!llvm.ptr<i8>, i64) -> ()
    %119 = llvm.call @omTensorGetShape(%112) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %120 = llvm.call @omTensorGetStrides(%112) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %121 = llvm.mlir.constant(0 : i64) : i64
    %122 = llvm.extractvalue %79[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %123 = llvm.getelementptr %119[%121] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %122, %123 : !llvm.ptr<i64>
    %124 = llvm.extractvalue %79[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %125 = llvm.getelementptr %120[%121] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %124, %125 : !llvm.ptr<i64>
    %126 = llvm.mlir.constant(1 : i64) : i64
    %127 = llvm.extractvalue %79[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %128 = llvm.getelementptr %119[%126] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %127, %128 : !llvm.ptr<i64>
    %129 = llvm.extractvalue %79[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %130 = llvm.getelementptr %120[%126] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %129, %130 : !llvm.ptr<i64>
    %131 = llvm.mlir.constant(1 : i64) : i64
    %132 = llvm.getelementptr %83[%131] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %112, %132 : !llvm.ptr<ptr<i8>>
    %133 = llvm.call @omTensorListCreate(%83, %80, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %133 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_in_sig : !llvm.ptr<array<186 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<186 x i8>> to !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<129 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<129 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

